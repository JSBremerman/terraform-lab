variable "project_id" {
  description = "GCP project ID you own. Do not commit a client project ID."
  type        = string
}

variable "region" {
  description = "GCS bucket location"
  type        = string
  default     = "US"
}

variable "bucket_prefix" {
  description = "Prefix for the bucket name. Must be globally unique."
  type        = string
  default     = "jsb-terraform-lab"
}
