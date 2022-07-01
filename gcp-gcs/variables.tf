variable "project" {
  type    = string
  default = "poc-adm-finserv-1133276"
}
variable "region" {
  type    = string
  default = "us-central1"
}

variable "terraform_service_account" {
  type    = string
  default = "gcp-ops@poc-adm-finserv-1133276.iam.gserviceaccount.com"
}