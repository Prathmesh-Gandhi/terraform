resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "n1-standard-2"
  allow_stopping_for_update = true 
  zone         = "us-east1-b"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "prod-subnet"
    subnetwork = "private-subnet-1"

    access_config {
      // Ephemeral public IP
    }
  }
}
