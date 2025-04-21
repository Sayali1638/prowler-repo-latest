resource "aws_iam_role" "example" {
  name               = "prowler-iam-role"
  assume_role_policy = <<EOF
  {
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect": "Allow",
        "Principal": {
          "Service": "ec2.amazonaws.com"
        },
        "Action": "sts:AssumeRole"
      }
    ]
  }
  EOF
}

output "role_name" {
  value = aws_iam_role.example.name
}
