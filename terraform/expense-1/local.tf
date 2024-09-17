locals {
    instance_type = [for name in var.ex_instance_names : name == "database" ? "t3.micro" : "t2.micro"]
}
locals {
    records = [for index, name in var.ex_instance_names : name == "frontend" ? aws_instance.ex_instance[index].public_ip : aws_instance.ex_instance[index].private_ip]
}

locals{
    domain = [for index, name in var.ex_instance_names : name == "frontend" ? local.domain_name : "${var.ex_instance_names[index]}.${local.domain_name}"]
}

locals {
    zone_id = "Z017838439GYM2G1E1QUJ"
}

locals {
    domain_name = "expensemind.online"
}