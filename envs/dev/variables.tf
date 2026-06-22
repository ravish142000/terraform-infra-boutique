variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "environment" {
  description = "The environment for the VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "The CIDR blocks for the public subnets"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "The CIDR blocks for the private subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "The availability zones for the subnets"
  type        = list(string)
}


variable "eks_version" {
  description = "The version of EKS to use"
  type        = string
}

variable "node_group_min_size" {
  description = "The minimum size of the EKS node group"
  type        = number
}

variable "node_group_max_size" {
  description = "The maximum size of the EKS node group"
  type        = number
}

variable "node_group_desired_size" {
  description = "The desired size of the EKS node group"
  type        = number
}

variable "instance_type" {
  description = "The instance type for the EKS worker nodes"
  type        = string
}



