#!/bin/bash

dune build @bench_linux
dune promote
dune build @bench_posix
dune promote
