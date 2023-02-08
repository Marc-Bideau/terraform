locals {
    envs = { for tuple in regexall("(.*)=(.*)", file(".env")) : tuple[0] => tuple[1] }
}
output "envs" {
    value = local.envs
}
provider "aws" {
  region     = "us-east-1"
  access_key = "${local.envs["ACCESS_KEY"]}"
    secret_key = "${local.envs["SECRET_KEY"]}"
}
module "sg"{
    source = "./modules/security_group"
}

module "ebs"{
    source  = "./modules/EBS"
    disk_size = 5 
}

module "eip"{
    source ="./modules/public_IP"
}
module "ec2"{
    source ="./modules/instance_EC2"
    instance_type = "t2.micro"
    public_ip = module.eip.output_eip
    sg_name = module.sg.ouptut_sg_name
}

resource "aws_eip_association" "eip_assoc" {
    instance_id = module.ec2.output_ec2_id 
    allocation_id = module.eip.output_eip_id 
}
resource "aws_volume_attachment" "ebs_att"{
    device_name = "/dev/sdh"
    volume_id = module.ebs.output_id_volume
    instance_id = module.ec2.output_ec2_id
}

