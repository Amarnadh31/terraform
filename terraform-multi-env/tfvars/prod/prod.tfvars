tags = {
    Environment = "prod"
}

ingress_1 ={
        rule_1 = {
            from_port   = 22
            to_port     = 22
            ip_protocol = "tcp"
            cidr_ipv4   = "0.0.0.0/0"
        },
        rule_2 = {
            from_port   = 80
            to_port     = 80
            ip_protocol = "tcp"
            cidr_ipv4   = "0.0.0.0/0"
        },
        rule_3 = {
            from_port = 0
            to_port = 0
            ip_protocol = "-1"
            cidr_ipv4   = "0.0.0.0/0"
        },
}

instances = {

    frontend-prod = "t2.micro"
    backend-prod = "t2.micro"
    database-prod = "t2.small"
}


sg_name = "Prod_sg"
