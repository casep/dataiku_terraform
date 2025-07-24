module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.31"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  # Optional
  cluster_endpoint_public_access = true

  # Optional: Adds the current caller identity as an administrator via cluster access entry
  enable_cluster_creator_admin_permissions = true

  cluster_compute_config = {
    enabled    = true
    node_pools = ["general-purpose"]
  }

  vpc_id     = "vpc-0a84cd4166deb39f7"
  subnet_ids = ["subnet-0f3773cbcc47d6c4f", "subnet-044010bf5e8e38680", "subnet-03036f25fb9fd330f"]

  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}