# configure aws provider
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# store the terrafor state file in s3
terraform {
  backend "s3" {
    bucket  = "terraform.statefile.test"
    key     = "terraform.tfstate.test"
    region  = "us-east-1"
    profile = "default"
  }
}