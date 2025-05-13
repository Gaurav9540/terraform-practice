variable "instance_type" {
  description = "This is the instance type for the demo EC2 instance"
  type        = string
  default     = "t3.micro"
}

variable "vpc_cidr" {
  default = "10.0.0.0/20"
}

variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  default = "10.0.2.0/24"
}

variable "route_table_cidr" {
  default = "0.0.0.0/0"
}

variable "key_name" {
  default = "new-key"
}

variable "ami_id" {
  default = "ami-0e35ddab05955cf57"
}

variable "instance_name" {
  default = "MyWebServer"
}

output "instance_ip_addr" {
  value = aws_instance.web.private_ip
}


