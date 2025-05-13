terraform {
  backend "s3" {
    bucket         = "terraform-pos-lanchonete-micros"
    key            = "eks/state-file/terraform.tfstate"
    region         = "us-east-1"
  }
}