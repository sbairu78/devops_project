provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "demo-server" {
    ami = "ami-093467ec28ae4fe03"
    instance_type = "t2.micro"
    key_name = "dpp"
}
resource "aws_security_group" "demo-sg" {
  name        = "demo-sg"
  description = "SSH Access"
  
  ingress {
    description      = "SSH Access"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "SSH Port"

  }
}