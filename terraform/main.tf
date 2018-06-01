############################################################################
######## AWS-Provider-and-Module-Definition-Only-Below-This ################
############################################################################

### AWS-Provider
provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}


### Module Service-Group
module "whServiceGroups" {
  source     = "./modules/whServiceGroups"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

### Module EC2
module "whEC2" {
  source     = "./modules/whEC2"
  sg_out     = ["${module.whServiceGroups.whServiceGroups_SG}"]
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}
############################################################################
####################### End ################################################



############################################################################
######## AWS-Resources-Definition-Only-Below-This ##########################
############################################################################







############################################################################
####################### End ################################################
