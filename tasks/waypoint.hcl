project = "waypoint-demo"

app "tasks" {
  labels = {
    "service" = "tasks"
  }

  build {
    use "docker" {}

    registry {
      use "docker" {
        image = "vlj91/tasks"
        tag   = gitrefpretty()
        local = false
      }
    }
  }

  deploy {
    use "kubernetes" {
      replicas     = 1
      probe_path   = "/healthcheck"
      service_port = 4567
    }
  }

  release {
    use "kubernetes" {
      port = 4567
    }
  }
}
