output "frontend_punlic_ip" {
    value =  [for index, name in var.ex_instance_names : aws_instance.ex_instance[index].public_ip ] #if name == "frontend"
}

output "domain_names" {
    value = [for index, name in var.ex_instance_names : aws_route53_record.Expense_record[index].name]
}

