resource "null_resource" "file_copy" {
	connection {
		type = "ssh"
		user = var.module_ec2_user
		agent = false 
		host = "${var.instance_public_ip}"
		private_key = file("keys/devopsep2021.pem")
	}	
	
	provisioner "file" {
		source = "files/test.txt"	
		destination = "/home/ubuntu/terra_test.txt"
	}
}