provider "aws" {
  region = "ap-south-1" # or your preferred region
}

resource "aws_instance" "web" {
  ami           = "ami-0e35ddab05955cf57"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}