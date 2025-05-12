terraform {
  backend "s3" {
    bucket = "s3-for-terraform-demo"
    key    = "new-key.pem"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1" # or your preferred region
}

resource "aws_instance" "web" {
  ami           = "ami-0e35ddab05955cf57"
  instance_type = "t2.micro"

  tags = {
    Name = "MyWebServer"
  }
}