#vpc variables
variable "vpc_cidr" {
  default       = "10.0.0.0/16"
  description   = "vpc cidr block"
  type          = string

  
}
variable "public_subnet_az1_cidr" {
  default       = "10.0.0.0/24"
  description   = "public subnet az1 cidr block"
  type          = string
}
variable "public_subnet_az2_cidr" {
  default       = "10.0.1.0/24"
  description   = "public subnet az2 cidr block"
  type          = string
}
variable "private_app_subnet_az1_cidr" {
  default       = "10.0.2.0/24"
  description   = "private app subnet az1 cidr block"
  type          = string
}
variable "private_app_subnet_az2_cidr" {
  default       = "10.0.3.0/24"
  description   = "private app subnet az2 cidr block"
  type          = string
}
variable "private_data_subnet_az1_cidr" {
  default       = "10.0.4.0/24"
  description   = "private data subnet az1 cidr block"
  type          = string
}
variable "private_data_subnet_az2_cidr" {
  default       = "10.0.5.0/24"
  description   = "private data subnet az2 cidr block"
  type          = string
}
#security group variable 
variable "ssh_location" {
  default     ="0.0.0.0/0"
  description = "the ip address that can ssh into instances"
  type        = string
  
}
#Rds variable
variable "database_snapshot_identifier" {
  default      = "arn:aws:rds:us-east-1:112655855517:snapshot:dev-database-snapshot-project"
   description = "data base snapshot arn"
   type        =string 
  
}
variable "database_instance_class" {
  default      = "db.t2.micro"
  
   description = "data base instance type"
   type        = string 
  
}
variable "database_instance_identifier" {
  default      = "application-database-1"
   description = "data base instance identifier"
   type        = string 
  
}

/* variable "multi_az_deployment" {
  default      = fasle
   description = "create a standbt db instance"
   type        = bool
  
} */

#application loadbalancer varibles
variable "ssl_certificate_arn" {
  default      = "arn:aws:acm:us-east-1:112655855517:certificate/e489634a-6cc9-4d00-8a14-e53292579937"
   description = "ssl certificate arn"
   type        = string 

}