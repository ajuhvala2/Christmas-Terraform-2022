provider "aws" {
  region = "us-east-1"
  profile ="vala"
}

#stores my statefile in S3
terraform {
  backend "s3" {
    bucket = "vala-sucess-bank-terrafron-statefile"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
   #profile ="vala-terraform-user"
  }
}



