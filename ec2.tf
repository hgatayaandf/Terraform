resource "aws_instance" "web" {
  ami             = "ami-0c42696027a8ede58"
  instance_type   = "t2.micro"
  key_name        = "cache"
  security_groups = ["sg"]
  #  count = 2

  tags = {
    Name = "webserver-2"
    Env  = "Production"
  }
}