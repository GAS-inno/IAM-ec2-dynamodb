/*variable "vpc_name" {
  description = "Name tag of the VPC"
  type        = string
  default = "ce10-tf-vpc-47"
}
*/

variable "vpc_ID"{
  description = "VPC ID"
  type = string
  default = "vpc-037beb3e76128a4d8"  #replace your existing vpc ID
}

variable "instance_count" {
  description = "Number of EC2 instances to launch"
  type        = number
  default     = 1
}

variable "instance_type" {
  description = "Name of instances type"
  type        = string
  default     = "t3.micro"
}

variable "ami" {
  description = "Name of ami"
  type        = string
  default     = "ami-00ca32bbc84273381" # Amazon Linux 2023 AMI ID
}

variable "subnet_id" {
  description = "Name of subnet id"
  type        = string
  default     = "subnet-082ddbdeb83a64e33" # Public Subnet ID
}


