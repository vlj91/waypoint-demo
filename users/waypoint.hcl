project = "waypoint-demo"

app "users" {
  labels = {
    "service" = "users"
  }

  build {
    use "docker" {}

    registry {
      use "docker" {
        image = "vlj91/users"
        tag = "latest"
        local = false
      }
    }
  }

  deploy {
    use "kubernetes" {
      replicas = 1
      probe_path = "/healthcheck"
      service_port = 4567
    }
  }

  release {
    use "kubernetes" {
      port = 4567
    }
  }
}
