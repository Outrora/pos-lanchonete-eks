resource "aws_eks_cluster" "eks-cluster" {
  name     = "${var.NOME}-EKS"
  version  = "1.32"
  role_arn = data.aws_iam_role.labrole.arn

  vpc_config {
    subnet_ids         = [for subnet in data.aws_subnet.subnet : subnet.id if subnet.availability_zone != "${var.regionDefault}e"]
    security_group_ids = [aws_security_group.sg.id]
  }

  access_config {
    authentication_mode = var.accessConfig
  }

  tags = {
    projeto = var.TAGS
  }
}