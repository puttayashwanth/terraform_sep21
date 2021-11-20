resource "aws_s3_bucket" "remote_s3" {
    bucket = var.bucket_name
	
	versioning {
		enabled = true 
	}
	
	server_side_encryption_configuration {
		rule {
				apply_server_side_encryption_by_default {
					sse_algorithm = var.sse_type
				}
		}
	}	
}

