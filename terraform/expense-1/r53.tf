resource "aws_route53_record" "Expense_record" {
    count = length(var.ex_instance_names)
    zone_id = local.zone_id
    name = local.domain[count.index]
    ttl = 1
    type = "A"
    allow_overwrite = true
    records = local.records
}
