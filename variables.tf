variable "region" {
  default     = "eu-west-1"
  description = "AWS region"
}

variable "cluster_name" {
  default     = "angrydome"
  description = "GitPod Cluster Name"
}

variable "cluster_version" {
  default     = "1.21"
  description = "EKS Cluster Version"
}



locals {
  name            = "ex-${replace(basename(path.cwd), "_", "-")}"
  cluster_version = "1.22"
  region          = "eu-west-1"

  tags = {
    Example    = local.name
    GithubRepo = "terraform-aws-eks"
    GithubOrg  = "terraform-aws-modules"
  }
}