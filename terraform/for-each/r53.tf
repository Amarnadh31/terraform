resource "aws_route53_record" "my_route" {
  for_each = aws_instance.for_each_instance
  zone_id  = var.zone_id
  name     = each.key == "frontend" ? var.domain_name : "${each.key}.${var.domain_name}"
  type     = "A"
  ttl      = 1
  records  = each.key == "frontend" ? [each.value.public_ip] : [each.value.private_ip]
}