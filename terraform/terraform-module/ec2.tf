module "my_ec2" {

    source = "../terrafor-ec2-module"

    my_instance = "t2.micro"

    my_ami = "ami-09c813fb71547fc4f"

    my_sg_name = "module_instance"
}