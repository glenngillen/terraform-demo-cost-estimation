#variable "instance_type" {
#  type    = "string"
#  default = "t3.micro"
#}
#
#resource "aws_autoscaling_group" "prod-web-servers" {
#  name                      = "prod-web-servers"
#  max_size                  = 0
#  min_size                  = 0
#  health_check_grace_period = 300
#  health_check_type         = "ELB"
#  desired_capacity          = 0
#  force_delete              = true
#  placement_group           = "${aws_placement_group.web.id}"
#  vpc_zone_identifier       = [aws_subnet.us-east-1a.id, aws_subnet.us-east-1b.id, aws_subnet.us-east-1c.id, aws_subnet.us-east-1d.id, aws_subnet.us-east-1f.id]
#  launch_template {
#    id      = "${aws_launch_template.web.id}"
#    version = "$Latest"
#  }
#
#  timeouts {
#    delete = "15m"
#  }
#}
#
variable "vpc_id" {
  type    = "string"
  default = "vpc-01e40d78"
}

#variable "default-security-group" {
#  type    = "string"
#  default = "sg-2a1ea154"
#}
#
#data "aws_ami" "ubuntu" {
#  most_recent = true
#
#  filter {
#    name   = "name"
#    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
#  }
#
#  filter {
#    name   = "virtualization-type"
#    values = ["hvm"]
#  }
#
#  owners = ["099720109477"] # Canonical
#}
#
#resource "aws_subnet" "us-east-1a" {
#  vpc_id      = var.vpc_id
#  cidr_block  = "172.31.16.0/20"
#}
#resource "aws_subnet" "us-east-1b" {
#  vpc_id      = var.vpc_id
#  cidr_block  = "172.31.32.0/20"
#}
#resource "aws_subnet" "us-east-1c" {
#  vpc_id      = var.vpc_id
#  cidr_block  = "172.31.0.0/20"
#}
#resource "aws_subnet" "us-east-1d" {
#  vpc_id      = var.vpc_id
#  cidr_block  = "172.31.64.0/20"
#}
resource "aws_subnet" "us-east-1e" {
  vpc_id      = var.vpc_id
  cidr_block  = "172.31.48.0/20"
}
#resource "aws_subnet" "us-east-1f" {
#  vpc_id      = var.vpc_id
#  cidr_block  = "172.31.80.0/20"
#}
#
#resource "aws_launch_template" "web" {
#  name = "web-template"
#  disable_api_termination = true
#  image_id = "${data.aws_ami.ubuntu.id}"
#  instance_initiated_shutdown_behavior = "terminate"
#  instance_type = var.instance_type
#  vpc_security_group_ids = [var.default-security-group]
#}
#
#resource "aws_placement_group" "web" {
#  name     = "web"
#  strategy = "spread"
#}
#
#resource "aws_s3_account_public_access_block" "global_block" {
#  block_public_acls   = true
#  block_public_policy = true
#}
#resource "aws_s3_bucket" "bucket-1" {
#  bucket = "cost-estimation-bucket-1"
#  acl    = "private"
#}
#resource "aws_s3_bucket" "bucket-2" {
#  bucket = "cost-estimation-bucket-2"
#  acl    = "private"
#}
#resource "aws_s3_bucket" "bucket-3" {
#  bucket = "cost-estimation-bucket-3"
#  acl    = "private"
#}
#resource "aws_s3_bucket" "bucket-4" {
#  bucket = "cost-estimation-bucket-4"
#  acl    = "private"
#}
#resource "aws_s3_bucket" "bucket-5" {
#  bucket = "cost-estimation-bucket-5"
#  acl    = "private"
#}
#resource "aws_s3_bucket" "bucket-6" {
#  bucket = "cost-estimation-bucket-6"
#  acl    = "private"
#}
#resource "aws_s3_bucket" "bucket-7" {
#  bucket = "cost-estimation-bucket-7"
#  acl    = "private"
#}
#resource "aws_s3_bucket" "bucket-8" {
#  bucket = "cost-estimation-bucket-8"
#  acl    = "private"
#}
#resource "aws_s3_bucket" "bucket-9" {
#  bucket = "cost-estimation-bucket-9"
#  acl    = "private"
#}
#resource "aws_s3_bucket" "bucket-10" {
#  bucket = "cost-estimation-bucket-10"
#  acl    = "private"
#}
#resource "aws_s3_bucket" "bucket-11" {
#  bucket = "cost-estimation-bucket-11"
#  acl    = "private"
#}
#
#output "ami_id" {
#  value = data.aws_ami.ubuntu.id
#}