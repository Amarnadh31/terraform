resource "aws_instance" "terraform" {
    ami = var.my_ami
    instance_type = var.my_instance
    vpc_security_group_ids = var.my_sg
    tags = {
        Name= var.my_sg_name
    }
}