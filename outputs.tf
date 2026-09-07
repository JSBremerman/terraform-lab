output "bucket_name" {
  description = "Name of the lab bucket"
  value       = google_storage_bucket.lab.name
}

output "bucket_url" {
  description = "GCS URL"
  value       = google_storage_bucket.lab.url
}
