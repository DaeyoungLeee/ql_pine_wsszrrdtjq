project = "pine_wsszrrdtjq"

app "pine_wsszrrdtjq" {
  build {
    use "pack" {
      builder     = "heroku/buildpacks:20"
    }
    registry {
      use "docker" {
        image = "868771833856.dkr.ecr.ap-northeast-2.amazonaws.com/pine_wsszrrdtjq"
        tag   = "latest"
      }
    }
  }
  deploy {
    use "docker" {
    }
  }
}


