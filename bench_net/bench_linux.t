  $ EIO_BACKEND=linux ./main.exe 2 2 25 1000 30
  +Using linux backend
  +Running HTTP...
  {
    "config": {
      "uname": "Linux debian 6.1.0-16-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6.1.67-1 (2023-12-12) x86_64 GNU/Linux",
      "backend": "linux",
      "recommended_domain_count": 32
    },
    "results": {
      "description": "requests:50000 client-domains:2 server-domains:2",
      "iters": 30,
      "Ave time in ms": 166.34889443715414,
      "Ave req/s": 305541.7132416547
    }
  }

  $ EIO_BACKEND=linux ./main.exe 1 2 25 1000 30
  +Using linux backend
  +Running HTTP...
  {
    "config": {
      "uname": "Linux debian 6.1.0-16-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6.1.67-1 (2023-12-12) x86_64 GNU/Linux",
      "backend": "linux",
      "recommended_domain_count": 32
    },
    "results": {
      "description": "requests:25000 client-domains:1 server-domains:2",
      "iters": 30,
      "Ave time in ms": 127.23401387532552,
      "Ave req/s": 197800.2734496834
    }
  }

  $ EIO_BACKEND=linux ./main.exe 2 1 25 1000 30
  +Using linux backend
  +Running HTTP...
  {
    "config": {
      "uname": "Linux debian 6.1.0-16-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6.1.67-1 (2023-12-12) x86_64 GNU/Linux",
      "backend": "linux",
      "recommended_domain_count": 32
    },
    "results": {
      "description": "requests:50000 client-domains:2 server-domains:1",
      "iters": 30,
      "Ave time in ms": 264.1992648442586,
      "Ave req/s": 191364.84275953917
    }
  }

  $ EIO_BACKEND=linux ./main.exe 1 1 25 1000 30
  +Using linux backend
  +Running HTTP...
  {
    "config": {
      "uname": "Linux debian 6.1.0-16-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6.1.67-1 (2023-12-12) x86_64 GNU/Linux",
      "backend": "linux",
      "recommended_domain_count": 32
    },
    "results": {
      "description": "requests:25000 client-domains:1 server-domains:1",
      "iters": 30,
      "Ave time in ms": 151.43887996673584,
      "Ave req/s": 165100.37709752942
    }
  }
