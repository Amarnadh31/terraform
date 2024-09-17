output  "my_output" {
    value = aws_instance.demo_ec2.instance_type

}

output  "ami" {
    value = aws_instance.demo_ec2.ami

}
output  "public_ip" {
    value = aws_instance.demo_ec2.public_ip

}