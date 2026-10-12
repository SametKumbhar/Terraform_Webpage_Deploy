
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_security_group" "web_sg" {
  name = "terraform-web-sg"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "my_ec2" {
  ami                    = var.aws_ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  user_data = <<-EOF
    #!/bin/bash
    set -eux

    dnf install -y docker git
    systemctl enable --now docker

    cd /opt
    git clone https://github.com/SametKumbhar/Static_Advertising_Fruit.git website

    docker build -t myfruitapp /opt/website

    docker run -d --name myfruitcontainer --restart unless-stopped -p 80:80 myfruitapp

  EOF

  user_data_replace_on_change = true

  tags = {
    Name = "Terra_Web_Server"
  }
}
