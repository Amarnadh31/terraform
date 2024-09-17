data "aws_ami" "my_ami" {
    most_recent = true
    owners = ["973714476881"]
    
    filter {
        name = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }

    filter {
        name ="root-device-type"
        values = ["ebs"]
    }

    # filter {
    #     name = "architecture"
    #     values = ["x86_64"]
    # }

    # filter {

    #     name = "platform"
    #     values = ["Red Hat"]
    # }
    
}