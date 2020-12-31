# Variables to hide secrets 
# It just going to contain the provider, which is AWS the secrets and the 
# region and we are not going to fill them out .we are going to refer to a variable

# Provider.tf
provider "aws"{
    access_key = "${var.AWS_ACCESS_KEY}"
    secret_key = "${var.AWS_SECRET_KEY}"
    region = "${var.AWS_REGION}"
}


# Here we are declaring the variables 
# vars.tf
variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
    default = "eu-west-2"
}


# here we are putting the values of variables
# terraform.tfvars

AWS_ACCESS_KEY = "AEREKIA3LQffg5GSZZUGRP"
AWS_SECRET_KEY = "klFq50+BKViiuztV7Q9D3bvb5/hmOHMdL3KO3fst"
AWS_REGION = "us-east-2"

These files are put it in .gitignore repo  because we never really wanted the
"access_key" and the "secret_key" exposed in our repository


provider.tf

provider "aws" {
    access_key = "${var.AWS_ACCESS_KEY}"
    secret_key = "${var.AWS_SECRET_KEY}"
    region = "${var.AWS_REGION}"
}


instance.tf

resource "aws_instance" "example" {
    ami = "${lookup(var.AMIS,var.AWS_REGION)}"
    instance_type = "t2.micro"
}

vars.tf

variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
    default = "us-east-2"
}
variable "AMIS" {
    type = "map"
    default = {
        us-east-2 = "ami-03d64741867e7bb94"
    }
}