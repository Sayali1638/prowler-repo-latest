resource "aws_db_instance" "db" {
  identifier            = var.db_name
  engine                = "mysql"
  instance_class        = "db.t3.micro"
  allocated_storage     = 20
  username              = var.username
  password              = var.password
  skip_final_snapshot   = true
}

variable "db_name" {
  description = "Name of the RDS database"
}

variable "username" {
  description = "Database username"
}

variable "password" {
  description = "Database password"
}
