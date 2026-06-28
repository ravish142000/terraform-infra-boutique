variable "environment" {
  description = "The environment for the EKS cluster (e.g., dev, prod)"
  type        = string
}
variable "eks_version" {
  description = "The Kubernetes version for the EKS cluster"
  type        = string
}

variable "private_subnet_ids" {
  description = "The IDs of the private subnets for the EKS cluster"
  type        = list(string)
}
variable "instance_type" {
  description = "The instance type for the EKS worker nodes"
  type        = string
}

variable "node_group_desired_size" {
  description = "The desired number of worker nodes for the EKS node group"
  type        = number
}

variable "node_group_max_size" {
  description = "The maximum number of worker nodes for the EKS node group"
  type        = number
}

variable "node_group_min_size" {
  description = "The minimum number of worker nodes for the EKS node group"
  type        = number
}

