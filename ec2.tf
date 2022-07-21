resource "aws_instance" "Teste-EC2" {
  ami                    = "ami-052efd3df9dad4825"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.Public_subnet.id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  tags = {
    Name = "lab-terraform-tst"
  }
}
