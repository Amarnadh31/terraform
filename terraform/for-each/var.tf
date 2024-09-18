variable "instances" {
  type = map(any)
  default = {
    mysql    = "t3.micro"
    backend  = "t2.micro"
    frontend = "t2.micro"
  }
}

variable "ingress_3" {
  type = map(object({
    from_port   = number
    to_port     = number
    ip_protocol = string
    cidr_ipv4   = string
  }))
  default = {
    rule_1 = {
      from_port   = 22
      to_port     = 22
      ip_protocol = "tcp"
      cidr_ipv4   = "0.0.0.0/0"
    }

  }
}

variable "zone_id" {
  default = "Z017838439GYM2G1E1QUJ"
}
variable "domain_name" {
  default = "expensemind.online"
}