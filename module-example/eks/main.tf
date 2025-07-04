provider "aws" {
  region = "us-east-2"
}
module "eks_cluster" {
  //source = "github.com/brikis98/terraform-up-and-running-code//code/terraform/07-working-with-multiple-providers/modules/services/eks-cluster"
source = "../eks-cluster"
  name           = "terraform-learning"
  min_size       = 2
  max_size       = 2
  desired_size   = 2
  # Due to the way EKS works with ENIs, t3.small is the smallest
  # instance type that can be used for worker nodes. If you try
  # something smaller like t2.micro, which only has 4 ENIs,
  # they'll all be used up by system services (e.g., kube-proxy)
  # and you won't be able to deploy your own Pods.
  instance_types = ["t3.small"]
}
