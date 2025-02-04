data "aws_ami" "ubuntu" {
  owners      = ["099720109477"]
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu-pro-server/images/hvm-ssd/ubuntu-bionic-18.04-amd64-pro-server-20230412"]


  }

}

resource "aws_instance" "main" {
  instance_type = local.vm.size
  ami           = data.aws_ami.ubuntu.id
  user_data     = local.vm.user_data
}

output "name" {
  value = aws_instance.main.private_ip
}
