resource "aws_sns_topic" "sns_topic" {
  name = var.topic_name
}

variable "topic_name" {}
output "sns_topic_arn" {
  value = aws_sns_topic.sns_topic.arn
}
