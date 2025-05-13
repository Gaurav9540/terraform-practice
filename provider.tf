provider "aws" {
  region = "ap-south-1" 
}

terraform {
  backend "s3" {
    bucket = "s3-bucket-for-demo-1443"
    key    = "new-key.pem"
    region = "ap-south-1"
  }
}