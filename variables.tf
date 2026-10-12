
variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "aws_ami" {
  type    = string
  default = "ami-08e3b3155fc937a94"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}
