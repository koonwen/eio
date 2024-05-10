open Eio.Std

let bench ~verbose ~n_client_domains ~n_server_domains ~n_connections_per_domain
    ~n_requests_per_connection iter =
  Eio_main.run @@ fun env ->
  traceln "Using %s backend" env#backend_id;
  let run (fn, iter) =
    let metrics =
      fn env#net env#domain_mgr ~n_client_domains ~n_server_domains
        ~n_connections_per_domain ~n_requests_per_connection
    in

    `Assoc [ ("iter", `Int iter); ("metrics", metrics) ]
  in
  let uname =
    let ch = Unix.open_process_in "uname -a" in
    let x = input_line ch in
    close_in ch;
    x
  in
  let results = List.init iter (fun i -> run (Bench_http.main, i)) in
  let print_res (results : Yojson.Safe.t) =
    Fmt.pr "%a@." (Yojson.Safe.pretty_print ~std:true)
    @@ `Assoc
         [
           ( "config",
             `Assoc
               [
                 ("uname", `String uname);
                 ("backend", `String env#backend_id);
                 ( "recommended_domain_count",
                   `Int (Domain.recommended_domain_count ()) );
               ] );
           ("results", results);
         ]
  in

  traceln "Running HTTP...";
  match verbose with
  | true -> print_res (`List results)
  | false ->
      let open Yojson.Safe.Util in
      (* Average time and req/s *)
      let total_time, total_req =
        results
        |> List.fold_left
             (fun (time, value) res_json ->
               let met_json = res_json |> member "metrics" in
               let time' = met_json |> member "time" |> to_float in
               let value' = met_json |> member "value" |> to_float in
               (time +. time', value +. value'))
             (0., 0.)
      in
      let ave_time =
        (`Float (total_time /. Float.of_int iter) :> Yojson.Safe.t)
      in
      let ave_req =
        (`Float (total_req /. Float.of_int iter) :> Yojson.Safe.t)
      in
      let terse : Yojson.Safe.t =
        `Assoc
          [
            ( "description",
              `String
                (results |> List.hd |> member "metrics" |> member "name" |> to_string)
            );
            ("iters", `Int iter);
            ("Ave time in ms", ave_time);
            ("Ave req/s", ave_req);
          ]
      in
      print_res terse

let () =
  let n_client_domains = try Sys.argv.(1) |> int_of_string with _ -> 2 in
  let n_server_domains = try Sys.argv.(2) |> int_of_string with _ -> 2 in
  let n_connections_per_domain =
    try Sys.argv.(3) |> int_of_string with _ -> 25
  in
  let n_requests_per_connection =
    try Sys.argv.(4) |> int_of_string with _ -> 1000
  in
  let iter = try Sys.argv.(5) |> int_of_string with _ -> 1 in
  let verbose = try Sys.argv.(6) = "verbose" with _ -> false in
  bench ~verbose ~n_client_domains ~n_server_domains ~n_connections_per_domain
    ~n_requests_per_connection iter
