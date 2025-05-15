resource "aws_security_group" "mysg" {
  name = var.name
  description = var.desc
  vpc_id = var.vpc_id

  tags = {
    Name = var.name
  }
}