terraform {
  backend "s3" {
    bucket = "s3-for-terraform-demo"
    key    = "new-key.pem"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1" 
}

resource "aws_instance" "web" {
  ami  = "ami-0e35ddab05955cf57"
  instance_type = instance_type

  tags = {
    Name = "MyWebServer"
  }
}

variable "aws_instance" {
  default = t3.micro
  description = "This id new demo instance"
}
