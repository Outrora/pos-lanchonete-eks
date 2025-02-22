resource "aws_eks_access_policy_association" "eks-access-policy" {
  cluster_name  = aws_eks_cluster.eks-cluster.name
  policy_arn    = var.policyArn
  principal_arn = data.aws_iam_role.labrole.arn

  access_scope {
    type = "cluster"
  }
  
}