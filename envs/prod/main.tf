module "vpc" {
  source               = "../../modules/vpc"
  vpc_cidr_block       = var.vpc_cidr_block
  environment          = var.environment
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
}


module "eks" {
  source                  = "../../modules/eks"
  environment             = var.environment
  eks_version             = var.eks_version
  private_subnet_ids      = module.vpc.private_subnet_ids
  node_group_min_size     = var.node_group_min_size
  node_group_max_size     = var.node_group_max_size
  node_group_desired_size = var.node_group_desired_size
  instance_type           = var.instance_type

}

module "ecr" {
  source = "../../modules/ecr"

  ecr_repository_names = [
    "frontend",
    "productcatalogservice",
    "cartservice",
    "checkoutservice",
    "paymentservice",
    "emailservice",
    "shippingservice",
    "currencyservice",
    "recommendationservice",
    "adservice"
  ]
}
