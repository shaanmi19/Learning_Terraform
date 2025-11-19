terraform {
  required_providers {
    aws = {
       source = "hashicorp/aws" 
       version = "5.37.0"
    }
  }
}

#activley managed by us, by our Terraform project
resource "aws_s3_bucket" "shaans_test_bucket" {
    bucket = "shaans-sample-bucket"

}

#Managed somewhere else, just want to use it in the project
data "aws_s3_bucket" "shaans_external_test_bucket" {
    bucket = "not-managed-by-me"
}

variable "bucket_name" {
    type = string
    description = "My variable used to set the bucket name"
    default = "my_default_bucket_name"
}

output "bucket_id" {
  value = aws_s3_bucket.shaans_external_test_bucket
}

locals {
    local_example = "This is a local variable"
}

#module "my_module" {
#source = "./module-example" #invalid
#}