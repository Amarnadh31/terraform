data "aws_ami" "test_ami" {

    most_recent = true
    owners = ["355449129696"]

    filter {
        name = "name"
        values = ["DevOps-LabImage-RHEL9"]
    }

    filter  {
        name = "root-device-type"
        values = ["ebs"]
    }
    
}