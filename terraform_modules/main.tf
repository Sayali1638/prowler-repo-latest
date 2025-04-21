module "lambda" {
  source       = "./modules/lambda"
}

module "s3" {
  source       = "./modules/s3"
}

module "vpc" {
  source  = "./modules/vpc" # Path to your module (or a registry/source link)
}

module "ec2" {
  source        = "./modules/ec2" # Path to the module
  instance_name = "prowler-ec2" 
}

module "ecr" {
  source    = "./modules/ecr"
  repo_name = "prowler-ecr"
}

module "rds" {
  source   = "./modules/rds"
  db_name  = "prowler-rds-db"
  username = "admin"
  password = "securepassword"
}


module "iam" {
  source              = "./modules/iam" # Path to IAM module
}


module "secrets" {
  source = "./modules/sm"
  name   = "prowler-secret-1"
  value  = "password"
}

module "dynamodb" {
  source = "./modules/dynamodb"
  name   = "prowler-table"
  key    = "id"
}

module "sqs_queue" {
  source     = "./modules/sqs"
}

module "sns" {
  source     = "./modules/sns"
  topic_name = "prowler-sns-topic"
}

output "sns_topic_arn" {
  value = module.sns.sns_topic_arn
}
