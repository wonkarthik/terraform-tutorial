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

variable "PATH_TO_PRIVATE_KEY" {
    default = "meltdown"
}
variable "PATH_TO_PUBLIC_KEY" {
    default = "meltdown.pub"
}
variable "INSTANCE_USERNAME" {
    default = "ec2-user"
}