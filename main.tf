variable "ami_image_name" {
  default     = "ami-038bba9a164eb3dc1" #us-west-1
  type        = string
  description = "This is a variable for AMI image"
}

variable "instance_type" {
  default     = "t3.micro"
  type        = string
  description = "This is a variable for Instance type"
}

resource "aws_instance" "web_server" {
  ami           = var.ami_image_name
  instance_type = var.instance_type

  tags = {
    "Name" = "alex-my-webserver"
  }
}
