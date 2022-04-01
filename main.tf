resource "aws_ebs_volume" "ebs" {
  availability_zone = var.az
  size              = var.size

  tags = {
    Name = var.tag_name
  }
}