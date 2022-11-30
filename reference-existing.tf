# data "google_compute_network" "existing_vpc" {
#   name = "default"
# }

# resource "google_compute_subnetwork" "subnet-4" { 
#     name = "testing"
#     network = data.google_compute_network.existing_vpc.id
#     ip_cidr_range = "172.20.1.0/24"
#     region = "asia-south1"
# }