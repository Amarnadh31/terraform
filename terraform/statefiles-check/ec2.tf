resource "aws_instance" "demo_ec2" {
    ami = data.aws_ami.test_ami.id
    instance_type = local.instance_type


    tags = {
        Name = "Test_instance"
        Environment = "Dev"
        Project = "expense"
    }
}