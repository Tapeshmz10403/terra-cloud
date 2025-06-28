terraform {
  cloud {
    organization = "TTERRA"

    workspaces {
      name = "terra-cloud"
    }
  }
}