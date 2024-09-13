resource "aws_security_group" "my_terra_sg" {
    name = var.my_sgname
    description = var.sg_descr

    tags = {
        Name = var.sg_name
    }
}

resource "aws_vpc_security_group_ingress_rule" "ssh_22"{
    security_group_id = aws_security_group.my_terra_sg.id
    from_port = var.from_ssh
    to_port = var.to_ssh
    ip_protocol = var.protocol_22
    cidr_ipv4 = var.cidr_22
}

resource "aws_vpc_security_group_egress_rule" "allow_all"{
    security_group_id = aws_security_group.my_terra_sg.id
    ip_protocol =var.engress_protocol
    cidr_ipv4 = var.cidr_22
}