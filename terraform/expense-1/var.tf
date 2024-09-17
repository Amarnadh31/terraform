variable "ingress_from_22" {
    default = 22
}
variable "ingress_to_22" {
    default = 22
}

variable "ssh_ex" {
    default = "tcp"
}

variable "ex_cidr" {
    default = "0.0.0.0/0"
}

variable "egress_protocol" {
    default = "-1"
}

variable "ex_instance_names" {
    default = ["frontend", "backend", "database"]
}

variable "ex_tags" {
    type = map
    default = {
        Name = "Expense-1"
        Project = "Expense_project"
        Environment = "Dev"
        Terraform = "yes"
    }
}