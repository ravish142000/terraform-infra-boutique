terraform {
  backend "s3" {
    bucket       = "ravi8797-terraform-s3-state"
    key          = "prod/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
