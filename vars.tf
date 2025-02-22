variable "regionDefault" {
  default = "us-east-1"
}


variable "accessConfig" {
  default = "API_AND_CONFIG_MAP"
}


variable "instanceType" {
  default = "t3.micro"
}


variable "policyArn" {
  default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}

variable "NOME" {}

variable "TAGS" {}