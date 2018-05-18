#This is a test Terraform build for a GCE instance

#Here we describe a simple f1-micro GCE instance to be launched in US East

resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "f1-micro"
  zone         = "us-east1-b"

  #Uncomment below to apply tags
  #tags = ["taga", "tagb"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-8"
    }
  }

  #// Local SSD disk
  #scratch_disk {
  #}

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }


}
