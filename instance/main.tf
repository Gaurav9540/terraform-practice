resource "aws_instance" "web" {
  ami  = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.public_subnet_id
  associate_public_ip_address = true
  key_name = var.key_name
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = var.public_instance_name
  }
}

resource "aws_instance" "private_web" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.private_subnet_id   
  associate_public_ip_address = false              
  key_name               = var.key_name
  vpc_security_group_ids = var.security_group_ids

  user_data = <<-EOF
            #!/bin/bash
            sudo apt-get update -y
            sudo apt-get install -y apache2
            sudo systemctl start apache2
            sudo systemctl enable apache2
            EOF


  tags = {
    Name = var.private_instance_name
  }
}