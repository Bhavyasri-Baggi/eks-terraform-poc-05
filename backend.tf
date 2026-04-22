terraform {
  cloud {
    organization = "eks-org-vpc-05"

    workspaces {
      name = "eks-terraform-poc-05"
    }
  }
}

