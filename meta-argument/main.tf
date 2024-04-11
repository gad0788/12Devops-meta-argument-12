/*
provider "aws" {
  region = "us-east-1"
}
resource "aws_iam_group" "grp1" {
  name = "manager"
  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_iam_user" "usr1" {
  name = "gad2024"
  depends_on = [ aws_iam_group.grp1 ]
}
*/

resource "aws_instance" "server1" {
  ami = "ami-033a1ebf088e56e81"
  instance_type = "t2.micro"
  key_name = "ec2-key"
  lifecycle {
    #create_before_destroy = true
  }
}
