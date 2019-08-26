data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_launch_template" "web" {
  name = "web-template"
  disable_api_termination = true
  image_id = "${data.aws_ami.ubuntu.id}"
  instance_initiated_shutdown_behavior = "terminate"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-2a1ea154"]
}

resource "aws_placement_group" "web" {
  name     = "web"
  strategy = "cluster"
}

resource "aws_autoscaling_group" "prod-web-servers" {
  name                      = "prod-web-servers"
  max_size                  = 1
  min_size                  = 0
  health_check_grace_period = 300
  health_check_type         = "ELB"
  desired_capacity          = 1
  force_delete              = true
  placement_group           = "${aws_placement_group.web.id}"
  vpc_zone_identifier       = ["subnet-315fa51d","subnet-823f88ca","subnet-a256a6f8","subnet-f19625fd","subnet-f9a68a9c"]
  launch_template {
    id      = "${aws_launch_template.web.id}"
    version = "$Latest"
  }

  timeouts {
    delete = "15m"
  }
}