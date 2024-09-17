output "private_ip"{
    value = [for instance in aws_instance.instance: instance.private_ip]
    
}


output "public_ip"{
    value = [for instance in aws_instance.instance: instance.public_ip]

}

output "ami_id" {
    value = data.aws_ami.my_ami.id
}