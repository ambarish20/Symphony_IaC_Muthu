provider "aws" {
  region = "${var.region}"

  version = "~> 2.7"
}

provider "template" {
  version = "2.1.2"
}

terraform {
  required_version = ">= 0.11.7"

  backend "s3" {
    bucket  = "sathish-packt-terraform-backbone-test-us-east-1"
    key     = "test/ecs_app_todo"
    region  = "us-east-1"
    encrypt = "true"
  }
}
