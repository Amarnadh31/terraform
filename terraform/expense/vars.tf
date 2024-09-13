variable "instance_name" {
    default = ["App", "front", "mysql"]
}
variable "domain"{
    default = "expensemind.online"
}
variable "myzone_id" {
    default = "Z017838439GYM2G1E1QUJ"
}

variable "ami" {
    type = string
    default = "ami-09c813fb71547fc4f"
}
variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "my_sgname"{
    type = string
    default = "secure_sg"
}

variable "sg_descr"{
    type = string
    default = "secure_allow"
}
variable "sg_name"{
    type = string
    default = "Terraform_sg"
}

variable "from_ssh"{
    default = 22
}
variable "to_ssh" {
    default = 22
}

variable "protocol_22" {
    default = "tcp"
}
variable "cidr_22" {
    default = "0.0.0.0/0"
}

variable "engress_protocol" {
    default = "-1"
}

variable "my_tags" {
    type = map 
    default = {
        Name = "dev_terra"
        Project = "expense"
        Environment = "Dev"
        Terraform = "yes"
    }
}