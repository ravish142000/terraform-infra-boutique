vpc_cidr_block       = "10.0.0.0/16"
environment          = "dev"
public_subnet_cidrs  = ["10.0.0.0/24", "10.0.1.0/24"]
private_subnet_cidrs = ["10.0.2.0/24", "10.0.3.0/24"]
availability_zones   = ["us-east-1a", "us-east-1b"]

eks_version             = "1.36"
node_group_min_size     = 2
node_group_max_size     = 3
node_group_desired_size = 2
instance_type           = "t3.medium"
