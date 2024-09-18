resource "aws_security_group" "my_sg_each" {
  name        = "for_each_security"
  description = "allowing all"


}


resource "aws_vpc_security_group_ingress_rule" "my_ingress_01" {
  security_group_id = aws_security_group.my_sg_each.id
  for_each          = var.ingress_3
  from_port         = each.value.from_port
  to_port           = each.value.to_port
  ip_protocol       = each.value.ip_protocol
  cidr_ipv4         = each.value.cidr_ipv4

}

resource "aws_vpc_security_group_ingress_rule" "my_ingress_03" {
  security_group_id = aws_security_group.my_sg_each.id
  ip_protocol       = "-1"
  cidr_ipv4         = "0.0.0.0/0"
}

resource "aws_vpc_security_group_egress_rule" "my_egress" {
  security_group_id = aws_security_group.my_sg_each.id
  ip_protocol       = "-1"
  cidr_ipv4         = "0.0.0.0/0"
}