resource "aws_instance" "web" {
  ami  = var.ami_id
  instance_type = var.instance_type
  associate_public_ip_address = true
  key_name = var.key_name

  tags = {
    Name = var.instance_name
  }
}
