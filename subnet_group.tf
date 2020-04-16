resource "aws_db_subnet_group" "default" {
  name        = "${var.subnet_grp_name}-1"
  description = "${var.subnet_grp_name}-1"
  subnet_ids = ["subnet-0fd74b2bdfe81b282", "subnet-029ec3b2fa026b407"]
  tags = {
     Name= "${var.subnet_grp_name}-1"
  }
}
