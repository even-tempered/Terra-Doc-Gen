variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "tags" {
  description = "Tags associated with the S3 bucket"
  type        = map(any)
}

variable "force_destroy" {
  description = "When this bucket is deleted, force any objects inside the bucket to be destroyed with it"
  type        = bool
  default     = false
}

variable "generate_name" {
  description = "Auto-generates the bucket name based on the provided input values, and includes the ILX prefix and random string generator. Set to false if you want the provided name to be explicit."
  type        = bool
  default     = true
}