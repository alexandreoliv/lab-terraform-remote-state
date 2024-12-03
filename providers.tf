terraform {
  backend "s3" {
    bucket         = "alex-s3-amazing-bucket"
    key            = "key/terraform.tfstate"
    region         = "us-west-1"
    dynamodb_table = "alex-statelock"
  }
}

provider "aws" {
  region = "us-west-1"
}
