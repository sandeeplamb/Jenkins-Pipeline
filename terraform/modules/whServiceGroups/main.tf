############################################################################
######## AWS-Resources-Definition-Only-Below-This ##########################
############################################################################

resource "aws_security_group" "ec2SG" {
  name        = "ec2SG"
  description = "Allow traffic"
  vpc_id      = "vpc-e80d6180"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "TCP"
    cidr_blocks = ["172.31.16.0/20"]
    description = "Allow HTTP"
  }


  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "TCP"
    cidr_blocks = ["172.31.16.0/20"]
    description = "Allow HTTPS"
  }

  ingress {
    from_port   = 6379
    to_port     = 6379
    protocol    = "TCP"
    cidr_blocks = ["172.31.16.0/20"]
    description = "Allow REDIS Base Port"
  }

  ingress {
    from_port   = 16379
    to_port     = 16379
    protocol    = "TCP"
    cidr_blocks = ["172.31.16.0/20"]
    description = "Allow REDIS Bus Port"
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["172.31.16.0/20"]
    description = "Allow SSH"
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "icmp"
    cidr_blocks = ["172.31.16.0/20"]
    description = "Allow ICMP PING"
  }

  egress {
    from_port       	= 0
    to_port         	= 0
    protocol        	= "-1"
    cidr_blocks     	= ["0.0.0.0/0"]
    description 	= "Allow all Outgoing traffic"
  }

  tags {
    Name 		= "module_SG"
    Created_by		= "Sandeep"
    Created_from	= "Terraform"
 }
}

############################################################################
####################### End ################################################
