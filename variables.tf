variable "ec2_ami" {
	type = string
	default = "ami-0567e0d2b4b2169ae"
}

variable "ec2_type" {
	type = string
	default = "t2.micro"
}

variable "pem_key" {
	type = string
	default = "devopsep2021"
}

variable "instance_name" {
	type = string
	default = "test_instance"
}