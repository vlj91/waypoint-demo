project = "waypoint-demo"

app "random-task-name" {
  build {
    use "docker" {}

    registry {
      use "aws-ecr" {
        region = "ap-southeast-2"
        repository = "random-task-name"
        tag = gitrefpretty()
      }
    }
  }

  deploy {
    use "aws-lambda" {
      region = "ap-southeast-2"
    }
  }

  release {
    use "aws-alb" {}
  }
}
