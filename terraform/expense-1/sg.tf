resource "aws_security_group" "ex_sg" {
    description = "end-to-end-sg"
    name = "expense_sg"


}

resource "aws_vpc_security_group_ingress_rule" "ex_ingress"{
    security_group_id = aws_security_group.ex_sg.id
    from_port = var.ingress_from_22
    to_port = var.ingress_to_22
    ip_protocol = var.ssh_ex
    cidr_ipv4 = var.ex_cidr
}

resource "aws_vpc_security_group_ingress_rule" "ex_ingress_1"{
    security_group_id = aws_security_group.ex_sg.id
    ip_protocol = var.egress_protocol
    cidr_ipv4 =var.ex_cidr
}

resource "aws_vpc_security_group_egress_rule" "ex_egress"{
    security_group_id = aws_security_group.ex_sg.id
    ip_protocol = var.egress_protocol
    cidr_ipv4 =var.ex_cidr
}