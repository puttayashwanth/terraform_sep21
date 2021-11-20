variable "bucket_name" {
	type = string
	sensitive = true
	default = "s3-backend-bucket-aaaaa-22222"
}

variable "sse_type" {
	type = string
	default = "AES256"
}