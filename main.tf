resource "google_compute_instance" "vm" {
  name         = "server-test-${terraform.workspace}"
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
      size  = 20
    }
  }

  network_interface {
    network = "default"

    access_config {} # Enables public IP
  }

  metadata = {
    enable-oslogin = "TRUE"
  }

  tags = ["terraform", terraform.workspace]
}
