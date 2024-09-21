resource "aws_instance" "terraform" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.sg-terraform.id]
    tags = {
        Name= "terra_instance"
    }

    provisioner "local-exec" {
        command = "echo ${aws_instance.terraform.private_ip} > private_ip.txt"
    }
}