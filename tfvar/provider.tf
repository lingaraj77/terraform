terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.15.0"
    }
  }
}
  # backend "s3"{

  #   bucket = ""
  #   key = "foreach-demo"
  #   region = "us-east-1"
  #   dyanomodb_table = " "
  # }

provider "aws" {
  # Configuration options
  region = "us-east-1"
}