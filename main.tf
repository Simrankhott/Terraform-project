resource "aws_launch_template" "mylaunch" {
  name_prefix   = "mylaunch"
  image_id      = "ami-022d03f649d12a49d"
  instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "myauto" {
  availability_zones = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1
  health_check_type  = "EC2"
  launch_template {
    id      = aws_launch_template.mylaunch.id
    version = "$Latest"
  }
}