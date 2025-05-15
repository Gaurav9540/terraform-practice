resource "aws_security_group" "mysg" {
  name = var.name
  description = var.desc
  vpc_id = module.vpc.main.id

  tags = {
    Name = var.name
  }
}