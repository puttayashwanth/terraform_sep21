resource "null_resource" "module_local_exec" {
	provisioner "local-exec" {
		command = "echo ${var.ec2_public_ip} > files/public_ips.txt"
	}

}