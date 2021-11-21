variable "root_ec2_ami" {
	type = string
	default = "ami-0567e0d2b4b2169ae"
}

variable "root_ec2_type" {
	type = string
	default = "t2.micro"
}

variable "root_pem_key" {
	type = string
	default = "devopsep2021"
}

variable "root_instance_name" {
	type = string
	default = "test_instance"
}


variable "root_ec2_user" {
	type = string
	default = "ubuntu"
}

