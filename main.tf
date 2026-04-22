module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = "demo-eks"
  cluster_version = "1.29"

  vpc_id = "vpc-02a998371885782dc"

  subnet_ids = [
    "subnet-07590f506ec22c074",
    "subnet-0315b09c5f5c529b0",
    "subnet-09888a606d4a7fe2e"
  ]

  eks_managed_node_groups = {
    default = {
      instance_types = ["t3.medium"]
      desired_size   = 1
      min_size       = 1
      max_size       = 2
    }
  }
}
