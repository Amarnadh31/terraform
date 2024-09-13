resource "aws_instance" "terra_server" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    key_name = ""
    vpc_security_group_ids = [aws_security_group.terra_sg.id]
    tags ={
        Name = "Server_tera"
    }
}