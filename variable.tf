### vpc variables ####

variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "vpc cidr block"
  type        = string
}

variable "pub_subnet_az1_cidr_block" {
  default     = "10.0.0.0/24"
  description = "pub subnet az1 cidr block"
  type        = string
}

variable "pub_subnet_az2_cidr_block" {
  default     = "10.0.1.0/24"
  description = "pub subnet az2 cidr block"
  type        = string
}

variable "private_app_subnet_az1_cidr_block" {
  default     = "10.0.2.0/24"
  description = "private app subnet az1 cidr block"
  type        = string
}


variable "private_app_subnet_az2_cidr_block" {
  default     = "10.0.3.0/24"
  description = "private app subnet az1 cidr block"
  type        = string
}

variable "private_db_subnet_az1_cidr_block" {
  default     = "10.0.4.0/24"
  description = "private db subnet az1 cidr block"
  type        = string
}

variable "private_db_subnet_az2_cidr_block" {
  default     = "10.0.5.0/24"
  description = "private db subnet az2 cidr block"
  type        = string
}

### security groups variables ###
variable "ssh_location" {
  default     = "0.0.0.0/0"
  description = "allow ssh connection"
  type        = string
}

### route53 variable ###
variable "domain_name" {
  default     = "anthony980.net"
  description = "domain name"
  type        = string
}

variable "Record_name" {
  default     = "www"
  description = "subdomain name"
  type        = string
}

# application load balancer variables

variable "ssl_certificate_arn" {
  default     = "arn:aws:acm:us-east-1:220894557754:certificate/e9db7d53-1dfe-4236-b2f9-2b4af30c2dac"
  description = "ssl certificate arn"
  type        = string
}

# SNS topic variables

variable "dev-team-email" {
  default     = "ikechukwu980@gmail.com"
  description = "sns email address for notifications"
  type        = string
}


# Auto scaling group variables

variable "launch_template_name" {
  default = "dev-launch-template"
  description = "name of launch template"
  type = string
}

variable "Ec2_image_id" {
  default = "ami-0a629e15dd6b24b2e"
  description = "AMIID"
  type = string
}

variable "Ec2_instance_type" {
  default = "t2.micro"
  description = "instance type"
  type = string
}

variable "keypair_name" {
  default = "Nova-Ec2-Keypair"
  description = "name of the ec2 keypair"
  type = string
}

# RDS Variables

variable "database_snapshot_identifier" {
  default = "arn:aws:rds:us-east-1:220894557754:snapshot:dev-rds-db-snapshot"
  description = "database snapshot"
  type = string
}

variable "database-instance-class" {
  default = "db.t2.micro"
  description = "db instance type"
  type = string
}

variable "database-instance-identifier" {
  default = "dev-rds-db"
  description = "identifier"
  type = string
}

variable "multi_az_deployment" {
  default = false
  description = "standyby db"
  type = bool
}

