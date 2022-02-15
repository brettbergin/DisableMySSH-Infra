data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "vuln_instance" {
  count           = var.instance_count
  ami             = data.aws_ami.ubuntu.id
  security_groups = [aws_security_group.allow_ssh.id, aws_security_group.allow_https.id]
  subnet_id       = aws_subnet.publicsubnets.id
  instance_type   = var.instance_type
  associate_public_ip_address = true

  tags = {
    Name  = "terraform-${count.index + 1}"
  }
}