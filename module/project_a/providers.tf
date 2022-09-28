terraform {
  required_providers {
    aws = {
      source = "registry.terraform.io/hashicorp/aws"
      version = "~> 4.32"
    }
  }
}

# auth to aws cloud go to aws cloud and create  go to iam and create a role for access the aws crete a access key and secrte_key


provider "aws"{
	region = "us-east-1"
	access_key = "AKIAREALNHMY66LI6TXO"
	secret_key = "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"
}
