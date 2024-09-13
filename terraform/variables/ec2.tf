resource "aws_instance" "expense" {
    ami = var.ami_id
    count = length(var.instance_names)
    # key_name = var.Keypair
    # region = var.region
    instance_type = var.instancetype
    vpc_security_group_ids = [aws_security_group.tera_sg.id]

    tags = merge (
        var.tags,
        {
            Name = var.instance_names[count.index]
        }
    )
}


