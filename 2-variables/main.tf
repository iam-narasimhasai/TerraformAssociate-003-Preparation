provider "aws" {
  region = var.region
}
resource "aws_instance" "ec2_example" {
  instance_type = var.inst_type
  ami           = "ami-08b5b3a93ed654d19"
  root_block_device {
    volume_size = 30
    volume_type = "gp2"
    
  }
  associate_public_ip_address = var.enable_public_ip
  count = var.inst_count
  user_data = filebase64("${path.module}/ok.txt")

  tags = var.project_environment

}

resource "aws_iam_user" "name" {
  count = length(var.user_names)
  name = var.user_names[count.index]
}