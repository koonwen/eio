  $ EIO_BACKEND=linux ./main.exe 2 2 25 1000 50
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
      "iters": 50,
      "Ave time in ms": 160.39939403533936,
      "Ave req/s": 316897.5865722982
    }
  }

  $ EIO_BACKEND=linux ./main.exe 1 2 25 1000 50
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
      "iters": 50,
      "Ave time in ms": 126.21735095977783,
      "Ave req/s": 198885.40952997442
    }
  }

  $ EIO_BACKEND=linux ./main.exe 2 1 25 1000 50
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
      "iters": 50,
      "Ave time in ms": 254.9575662612915,
      "Ave req/s": 196356.21135301728
    }
  }

  $ EIO_BACKEND=linux ./main.exe 1 1 25 1000 50
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
      "iters": 50,
      "Ave time in ms": 156.29060745239258,
      "Ave req/s": 159961.50844828325
    }
  }
