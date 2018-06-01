############################################################################
######## AWS-Resources-Definition-Only-Below-This ##########################
############################################################################

resource "aws_instance" "moduleEC2Instance" {
        ami                     = "${lookup(var.ami, var.region)}"
        instance_type           = "t2.micro"
        subnet_id               = "subnet-abf82ad1"
        source_dest_check       = false
        associate_public_ip_address = true
        security_groups         =  ["${element(var.sg_out, count.index)}"]
        #security_group         =  "${var.sg_out}"
        key_name                = "aws-sandbox"


  tags {
        Name                    = "moduleEC2Instance"
        Created_By              = "Sandeep"
        Created_From            = "Terrafrom"
  }
}


############################################################################
####################### End ################################################
