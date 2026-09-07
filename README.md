# terraform-lab

Personal Terraform example on Google Cloud. Not client work.

Creates a GCS bucket with versioning and public access prevented.

## Layout

- `providers.tf` — Google provider
- `variables.tf` — project, region, bucket prefix
- `main.tf` — bucket
- `outputs.tf` — bucket name and URL

## Use

You can read the code without applying it.

To plan or apply you need a GCP project you own and Application Default Credentials:

```bash
gcloud auth application-default login
terraform init
terraform plan
# terraform apply   # only on a project you own
terraform destroy
