################################################################################
# Cluster
################################################################################

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.24"

  cluster_name    = var.name
  cluster_version = var.eks_cluster_version

  # Give the Terraform identity admin access to the cluster
  # which will allow it to deploy resources into the cluster
  enable_cluster_creator_admin_permissions = true
  cluster_endpoint_public_access           = true
  
  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnet_ids

  cluster_compute_config = {
    enabled    = true
    node_pools = ["general-purpose", "system"]
  }
  tags = local.tags
}