resource "aws_route53_record" "route53" {
    count = length(var.instance_name)
    zone_id = var.myzone_id
    name    = "${var.instance_name[count.index]}.${var.domain}"
    type    = "A"
    ttl     = 1
    records = [aws_instance.my_instance[count.index].private_ip]
    allow_overwrite = true
}