resource "aws_security_group" "sg-terraform" {

    name = "terraform_sg"
    description = "allowing all ports as its egress/outgoing traffic" # security group allows a-zA-Z0-0 _-:/()#,@[]+=&;{}!$* 

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" # allow all ports
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] #allow for everyone
    ipv6_cidr_blocks = ["::/0"]
  }

  tags={
    Name = "terraform_sg"
  }
}

