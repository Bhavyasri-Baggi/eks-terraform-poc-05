module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = "demo-eks"
  cluster_version = "1.30"

  vpc_id = "vpc-02a998371885782dc"

  subnet_ids = [
    "subnet-07590f506ec22c074",
    "subnet-0315b09c5f5c529b0",
    "subnet-09888a606d4a7fe2e"
  ]
  cluster_endpoint_public_access  = true  
  cluster_endpoint_private_access = true

  eks_managed_node_groups = {
    default = {
      instance_types = ["t3.medium"]

      ami_type       = "AL2_x86_64"
      capacity_type  = "ON_DEMAND"


      desired_size   = 1
      min_size       = 1
      max_size       = 2
    }
  }
}
