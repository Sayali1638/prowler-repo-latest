resource "aws_ecr_repository" "repo" {
  name = var.repo_name
}

variable "repo_name" {
  description = "Name of the ECR repository"
}

