## Variable - Access-Key
variable "access_key" {
  description = "AWS-Sandbox Account Access Key"
}

## Variable Secret-Key
variable "secret_key" {
  description = "AWS-Sandbox Account Secret Key"
}

## Variable Region
variable "region" {
  description = "AWS-Region"
  default     = "us-east-2"
}

## Variable AMI
variable "ami" {
  description = "AWS-AMI's per Region"
  type        = "map"

  default = {
    us-east-2 = "ami-25615740"
    us-west-1 = "ami-25615740"
  }
}

variable "sg_out" {
  type = "list"
  default = []
}
