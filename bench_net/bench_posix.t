  $ EIO_BACKEND=posix ./main.exe 2 2 25 1000 50
  +Using posix backend
  +Running HTTP...
  {
    "config": {
      "uname": "Linux debian 6.1.0-16-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6.1.67-1 (2023-12-12) x86_64 GNU/Linux",
      "backend": "posix",
      "recommended_domain_count": 32
    },
    "results": {
      "description": "requests:50000 client-domains:2 server-domains:2",
      "iters": 50,
      "Ave time in ms": 142.0241928100586,
      "Ave req/s": 357408.9507294231
    }
  }

  $ EIO_BACKEND=posix ./main.exe 1 2 25 1000 50
  +Using posix backend
  +Running HTTP...
  {
    "config": {
      "uname": "Linux debian 6.1.0-16-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6.1.67-1 (2023-12-12) x86_64 GNU/Linux",
      "backend": "posix",
      "recommended_domain_count": 32
    },
    "results": {
      "description": "requests:25000 client-domains:1 server-domains:2",
      "iters": 50,
      "Ave time in ms": 109.60411071777344,
      "Ave req/s": 229057.31182021098
    }
  }
  $ EIO_BACKEND=posix ./main.exe 2 1 25 1000 50
  +Using posix backend
  +Running HTTP...
  {
    "config": {
      "uname": "Linux debian 6.1.0-16-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6.1.67-1 (2023-12-12) x86_64 GNU/Linux",
      "backend": "posix",
      "recommended_domain_count": 32
    },
    "results": {
      "description": "requests:50000 client-domains:2 server-domains:1",
      "iters": 50,
      "Ave time in ms": 217.21327304840088,
      "Ave req/s": 230656.58160628215
    }
  }
  $ EIO_BACKEND=posix ./main.exe 1 1 25 1000 50
  +Using posix backend
  +Running HTTP...
  {
    "config": {
      "uname": "Linux debian 6.1.0-16-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6.1.67-1 (2023-12-12) x86_64 GNU/Linux",
      "backend": "posix",
      "recommended_domain_count": 32
    },
    "results": {
      "description": "requests:25000 client-domains:1 server-domains:1",
      "iters": 50,
      "Ave time in ms": 109.81096744537354,
      "Ave req/s": 227851.83546468767
    }
  }
