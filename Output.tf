output "vpc_id" {
  value = aws_vpc.vpc.id 
}

output "public_subnet_AZ1_id" {
  value = aws_subnet.public_subnet_az1.id  
}

output "website_url" {
  value = join ("", ["https://", var.Record_name,".", var.domain_name])
}