resource "aws_security_group" "tera_sg" {
    description = "allowing for each values"
    name = "each_sg"

    tags = {
        Name = "My_sg"
    }

    dynamic "ingress" {
        for_each = var.ingress_rules
        content {
            from_port = ingress.value["from_port"]
            to_port = ingress.value["to_port"]
            protocol = ingress.value["protocol"]
            cidr_blocks = [ingress.value["cidr_blocks"]]

        }


    }
    


}
