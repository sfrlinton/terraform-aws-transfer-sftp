variable "bucket_name" {
  type        = string
  description = "SFTP Transfer S3 Bucket to transfer to/from"
}

variable "custom_dns_domain" {
  description = "If non-empty, domain name for custom DNS alias to sftp endpoint in Route53."
  default     = ""
}

variable "custom_dns_hostname" {
  description = "Route53 DNS alias hostname"
  default     = "sftp"
}

variable "home_dir_prefix" {
  type    = string
  description = "Prefix for home dir.  Homedirs are <S3bucket>/<home_dir_prefix><username>"

  default = "home/"
}

variable "manage_bucket" {
  type        = bool
  description = "If true, create/manage the S3 bucket in the module"
  default     = true
}

variable "s3_object_expiration_days" {
  description = "Number of days to keep objects in SFTP S3 bucket if managed.  No expiration if 0."
  type        = number

  default = null
}

variable "tags" {
  description = "Tags to assign to buckets and roles"
  default     = {}
}

variable "users_read_only" {
  type        = map(string)
  description = "Read-Only Users"

  default = {}
}

variable "users_read_write" {
  type        = map(string)
  description = "Read-Write Users"

  default = {}
}

variable "users_write_only" {
  type = map(string)
  description = "Write-Only Users"

  default = {}
}