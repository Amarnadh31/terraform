resource "aws_security_group" "tera_sg" {
    description = var.descr
    name = var.sg_name

    tags = {
        Name = "My_sg"
    }

}

resource "aws_vpc_security_group_ingress_rule" "allow_22" {
    security_group_id = aws_security_group.tera_sg.id
    from_port = var.from_22
    to_port = var.to_22
    ip_protocol = var.protocol
    cidr_ipv4 = var.cidr
}
resource "aws_vpc_security_group_ingress_rule" "allow_80" {
    security_group_id = aws_security_group.tera_sg.id
    from_port = var.from_80
    to_port = var.to_80
    ip_protocol = var.protocol
    cidr_ipv4 =var.cidr
}


resource "aws_vpc_security_group_egress_rule" "allow_all_ports" {

    security_group_id = aws_security_group.tera_sg.id
    ip_protocol = "-1"
    cidr_ipv4 =var.cidr

}



