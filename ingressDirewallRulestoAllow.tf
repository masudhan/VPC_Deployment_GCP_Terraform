#  Allow port 22 - ssh from home to vpn
resource "google_compute_firewall" "allow-ssh-from-home-to-vpn-firewall-rule" {
  name    = var.allow-ssh-from-home-to-vpn-firewall-rule[0].name
  network = google_compute_network.vpc_network.name

  allow {
    protocol = var.allow-ssh-from-home-to-vpn-firewall-rule[0].tcp_protocol
    ports    = var.allow-ssh-from-home-to-vpn-firewall-rule[0].ports
  }
  priority      = var.allow-ssh-from-home-to-vpn-firewall-rule[0].priority
  source_ranges = var.allow-ssh-from-home-to-vpn-firewall-rule[0].cidr_block

  target_tags = var.allow-ssh-from-home-to-vpn-firewall-rule[0].tags
}

#  Allow port 22 - ssh-ingress-all
resource "google_compute_firewall" "ssh-ingress-all" {
  name    = var.allow-ssh-for-all[0].name
  network = google_compute_network.vpc_network.name

  allow {
    protocol = var.allow-ssh-for-all[0].tcp_protocol
    ports    = var.allow-ssh-for-all[0].ports
  }
  priority      = var.allow-ssh-for-all[0].priority
  source_ranges = var.allow-ssh-for-all[0].cidr_block

  target_tags = var.allow-ssh-for-all[0].tags
}


