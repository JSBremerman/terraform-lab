resource "random_id" "suffix" {
  byte_length = 4
}

resource "google_storage_bucket" "lab" {
  name          = "${var.bucket_prefix}-${random_id.suffix.hex}"
  location      = var.region
  force_destroy = true

  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"

  versioning {
    enabled = true
  }

  labels = {
    name      = "terraform-lab"
    managedby = "terraform"
  }
}
