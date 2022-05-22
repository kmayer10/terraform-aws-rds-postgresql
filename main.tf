resource "aws_db_instance" "aws_db_instance" {
  engine = var.engine
  engine_version = var.engine_version
  identifier = var.name
  username = var.name
  password = var.password
  instance_class = var.instance_class
  storage_type = var.storage_type
  allocated_storage = var.allocated_storage
  multi_az = false
  db_subnet_group_name = var.db_subnet_group_name
  vpc_security_group_ids = var.vpc_security_group_ids
  port = "5432"
  db_name = var.db_name
  publicly_accessible = false
  skip_final_snapshot = true
}
