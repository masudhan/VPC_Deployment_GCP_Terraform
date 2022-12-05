# Below code will create a compute instance in country vpc and telangana-as-1 as subnet
resource "google_compute_instance" "openvpn-server" {
  name         = "openvpn-server"
  machine_type = "e2-medium"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        instance= "openvpn"
      }
    }
  }
 
  network_interface {
    network = google_compute_network.vpc_network.name
    subnetwork = google_compute_subnetwork.subnet-1.id
  }

  metadata_startup_script = "echo hi > /test.txt"
}