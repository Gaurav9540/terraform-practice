provider "aws" {
  region = "ap-south-1" 
}

terraform {
  backend "s3" {
    bucket = "s3-bucket-terraform-demo-1443"
    key    = "new-key.pem"
    region = "ap-south-1"
  }
}

module "vpc" {
  source = "./vpc"
  vpc_cidr = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  route_table_cidr = var.route_table_cidr
}

module "instance" {
  source = "./instance"
  ami_id = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name
  instance_name = var.instance_name
}
