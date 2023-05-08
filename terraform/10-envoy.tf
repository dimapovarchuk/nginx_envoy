resource "aws_instance" "envoy" {
  ami           = data.aws_ami.ubuntu_jammy.id
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_us_east_1a.id
  key_name      = "devops"

  vpc_security_group_ids = [
    aws_security_group.proxy.id,
    aws_security_group.ssh.id
  ]

  tags = {
    Name          = "envoy"
    service       = "envoy"
    node-exporter = "true"
  }
}
