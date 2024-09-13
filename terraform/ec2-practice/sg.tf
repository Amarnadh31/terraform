resource "aws_security_group" "terra_sg" {
    description = "using terraform"
    name = "Terra_sg"
    tags = {
        Name = "Terra_sg"
    }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
    security_group_id = aws_security_group.terra_sg.id
    from_port = 22
    to_port = 22
    ip_protocol = "tcp"
    cidr_ipv4 = "0.0.0.0/0"
}
resource "aws_vpc_security_group_egress_rule" "allow_all_ports" {
    security_group_id = aws_security_group.terra_sg.id
    ip_protocol = "-1"
    cidr_ipv4 = "0.0.0.0/0"
}

