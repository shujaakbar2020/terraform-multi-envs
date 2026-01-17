terraform {
  backend "gcs" {
    bucket  = "terraform-multi-envs"
    prefix  = "gcp-vm"
  }
}
