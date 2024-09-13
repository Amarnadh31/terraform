# variable "region" {
#     type=string
#     default= "us-east-1"
# }
variable "instance_names" {
    type = list (string)
    default = ["frontend" , "backedend", "mysql"]
}
variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instancetype" {
    type=string
    default = "t2.micro"
}

# variable "Keypair" {
#     type = string
#     default = " "
# }

variable "tags" {
    type = map
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "yes"
    }
}
variable "descr" {
    type=string
    default = "allow_22_and_443_ports"
}

variable "sg_name" {
    type = string
    default = "my_sg"
}

variable "from_22" {
    type=number
    default = 22
}

variable "to_22" {
    type=number
    default = 22
}

variable "from_80" {
    type=number
    default = 443
}

variable "to_80" {
    type=number
    default = 443
}

variable "protocol" {
    default = "tcp"
}

# variable "protocol_" {
#     type=string
#     default = "tcp"
# }

variable "cidr" {
    default = "0.0.0.0/0"
}

# variable "egress_port" {
#     type = number
#     default = 0
# }

# variable "egress_protocol" {
#     default = "-1"
# }

variable "zone_id" {
    default = "Z017838439GYM2G1E1QUJ"
}
variable "domain_name" {
    default = "expensemind.online"
}