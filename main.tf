provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

resource "google_compute_network" "vpc_network" {
  name = var.vpc_name
  auto_create_subnetworks = false
  mtu = var.vpc_mtu
}

resource "google_compute_subnetwork" "subnet-1" { 
    name = var.cidr_ranges[0].name
    network = google_compute_network.vpc_network.id
    ip_cidr_range = var.cidr_ranges[0].cidr_block
    region = var.region   
}

resource "google_compute_subnetwork" "subnet-2" { 
    name = var.cidr_ranges[1].name
    network = google_compute_network.vpc_network.id
    ip_cidr_range = var.cidr_ranges[1].cidr_block
    region = var.region   
}

resource "google_compute_subnetwork" "subnet-3" { 
    name = var.cidr_ranges[2].name
    network = google_compute_network.vpc_network.id
    ip_cidr_range = var.cidr_ranges[2].cidr_block
    region = var.region
}

output "vpc_id" {
  value = google_compute_network.vpc_network.id
  
}

output "subnet-1_id" {
  value = google_compute_subnetwork.subnet-1.id
  
}

output "subnet-2_id" {
  value = google_compute_subnetwork.subnet-2.id
  
}

output "subnet-3_id" {
  value = google_compute_subnetwork.subnet-3.id
  
}