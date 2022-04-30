job pine_wsszrrdtjq {

  datacenters = ["dc1"]

  group "quick-launcher" {
    count = 1
    network {
      mode = "bridge"
      port "http" {
        static = 20742
        to = 5000
      }
    }

    service {
      name = "demo-quicklauncher"
      port = "http"

      check {
        type     = "http"
        path     = "/"
        interval = "2s"
        timeout  = "2s"
      }
    }

    task "server" {
      driver = "docker"

      config {
        image = "868771833856.dkr.ecr.ap-northeast-2.amazonaws.com/pine_wsszrrdtjq:latest"
        ports = ["http"]
      }
    }
  }
}


