resource "aws_instance" "my_instance" {
    count = length(var.instance_name)
    ami = var.ami
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.my_terra_sg.id]

    tags = merge (
        var.my_tags,
        {
            Name = var.instance_name[count.index]
        }
    )
}