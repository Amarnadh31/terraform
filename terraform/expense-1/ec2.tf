resource "aws_instance" "ex_instance" {
    count = length(var.ex_instance_names)
    ami = data.aws_ami.ex_ami.id
    instance_type = local.instance_type[count.index]
    vpc_security_group_ids = [aws_security_group.ex_sg.id]

    tags = merge (
        var.ex_tags,
        {
            Name= var.ex_instance_names[count.index]
        }
    )
}