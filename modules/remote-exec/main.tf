resource "null_resource" "module_remote_exec" {
	connection {
		type = "ssh"
		user = var.module_ec2_user
		agent = false 
		host = "${var.instance_public_ip}"
		private_key = file("keys/devopsep2021.pem")
	}
	
	provisioner "remote-exec" {
		inline = [
				"sudo apt update -y", 
				"sudo apt-get install -y ca-certificates curl gnupg lsb-release",
				"curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg",
				"echo \"deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable\" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null",
				"sudo apt-get update -y",
				"sudo apt-get -y install docker-ce docker-ce-cli containerd.io"	
		]
	}
}