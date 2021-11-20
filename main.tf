resource "aws_instance" "new_ec2" {
	ami = var.ec2_ami
	instance_type  = var.ec2_type
	key_name = var.pem_key
	tags = {
		Name = var.instance_name
	}

}

