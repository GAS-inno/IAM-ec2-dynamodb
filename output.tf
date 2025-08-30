output "vpc_id" {
  value = var.vpc_ID #aws_vpc.main.id
}

output "public_subnet_id" {
  value = var.subnet_id   
}

//output "private_subnet_id" {
//  value = aws_subnet.private_a.id
//}

output "security_group_id" {
  value = aws_security_group.saw_sg2.id
}

#output "ec2_instance_id" {
#  value = aws_instance.public.id
#}

#output "ec2_public_ip" {
#  value =  #aws_instance.public.public_ip
#}
