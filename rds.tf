resource "aws_db_instance" "default" {
  allocated_storage    = var.storage
  storage_type         = var.st_type
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  name                 = var.db_name
  username             = var.user
  password             = var.passwd
  #parameter_group_name = "default.mysql5.7"
  identifier = var.rds_instance_name
  backup_retention_period = var.retention_period
  multi_az = var.boolean
  publicly_accessible = var.boolean
  vpc_security_group_ids = ["${aws_security_group.rds-sg.id}"]
  db_subnet_group_name = "${aws_db_subnet_group.default.name}"
  #final_snapshot_identifier = "false"
  #skip_final_snapshot = "true"

  }

 output "rds_endpoint" {
    value = "${aws_db_instance.default.endpoint}"
  }
