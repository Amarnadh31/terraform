resource "aws_instance" "terraform" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.sg-terraform.id]
    tags = {
        Name= "terra_instance"
    }

    provisioner "local-exec"{
        command = "echo ${self.public_ip} > public_ip.txt"
    }

    connection{
        type = "ssh"
        user = "ec2-user"
        password = "DevOps321"
        host = self.public_ip
    }
    #provisions well execute by the time of resource creation
    provisioner "remote-exec" {
        inline = [
            "sudo dnf install nginx -y",
            "sudo systemctl start nginx"
        ]
        
    }

}