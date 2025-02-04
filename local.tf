locals {
  vm = {
    my_region = "us-east-1"
    size      = "t2.micro"
    vmname    = "myvm"
    is_create = true
    user_data = <<-EOF
    #!/bin/bash 
    apt-get update 
    apt-get install apache2
    EOF
  }
}