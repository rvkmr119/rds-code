resource "aws_security_group" "rds-sg" {
  name = var.sg
  tags = {
    name = var.sg
  }
  vpc_id  =  "${var.vpcid}"
  ingress {
    description = "db port rule"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = [var.rds_cidr_block]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
