resource "aws_security_group" "thinknyx_security_group" {
  vpc_id = data.aws_vpc.thinknyx_vpc.id
  description = "This Security Group is controlled by Terraform Project"
  name = "thinknyx_security_group_kul"
  tags = {
    "Name" = "thinknyx_security_group_kul"
  }
  ingress {
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "SSH Port"
    from_port = 22
    to_port = 22
    protocol = "tcp"
  }
  egress {
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "All Outbound Traffic is Open"
    from_port = 0
    to_port = 0
    protocol = "-1"
  }
}