resource "aws_instance" "for_each_instance" {
  for_each               = var.instances
  ami                    = data.aws_ami.for_each_ami.id
  instance_type          = each.value
  vpc_security_group_ids = [aws_security_group.my_sg_each.id]

  tags = {

    Name = each.key
  }
}