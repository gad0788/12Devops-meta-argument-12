# Creating provider's block
provider "aws" {
  region = "us-east-1"
  profile = "default"
}
data "aws_instance" "ec21" {
  instance_id = "i-0f77ae73ec544efa9"
}

resource "aws_instance" "demo" {
  ami = data.aws_instance.ec21.id
  instance_type = data.aws_instance.ec21.instance_type  
  key_name = data.aws_instance.ec21.key_name
}
