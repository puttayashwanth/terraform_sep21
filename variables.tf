variable "bucket_name" {
	type = string
	sensitive = true
}

variable "sse_type" {
	type = string
	default = "AES256"
}