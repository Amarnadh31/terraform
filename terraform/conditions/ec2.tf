resource "aws_instance" "instance" {
    count = length(var.instance_name)
    ami = data.aws_ami.my_ami.id
    instance_type = var.instance_name[count.index] == "prod" ? "t3.micro" : "t2.micro"
    vpc_security_group_ids = [aws_security_group.my_security.id]

    tags ={
        Name = var.instance_name[count.index]
    }
}


resource "aws_security_group" "my_security" {
    description= "allow traffic"
    name = "security group"
}

resource "aws_vpc_security_group_ingress_rule" "my_ingress" {
    security_group_id = aws_security_group.my_security.id
    from_port = 22
    to_port = 22
    ip_protocol = "tcp"
    cidr_ipv4 = "0.0.0.0/0"
}
resource "aws_vpc_security_group_egress_rule" "my_egress"{
    security_group_id = aws_security_group.my_security.id
    ip_protocol = "-1"
    cidr_ipv4 = "0.0.0.0/0"
}