# Deny snpp-port (ports are 444, 50000-50004, apply to all)
resource "google_compute_firewall" "deny-snpp-port" {
  name    = var.ingress-deny-snpp-firewall-rule[0].name
  network = google_compute_network.vpc_network.name

  deny {
    protocol = var.ingress-deny-snpp-firewall-rule[0].tcp_protocol
    ports    = var.ingress-deny-snpp-firewall-rule[0].ports
  }
  deny {
    protocol = var.ingress-deny-snpp-firewall-rule[0].udp_protocol
    ports    = var.ingress-deny-snpp-firewall-rule[0].ports
  }
  priority      = var.ingress-deny-snpp-firewall-rule[0].priority
  source_ranges = var.ingress-deny-snpp-firewall-rule[0].cidr_block
}

# Deny ftp port (port - 21, apply to all)
resource "google_compute_firewall" "deny-ftp-port" {
  name    = var.ingress-deny-ftp-firewall-rule[0].name
  network = google_compute_network.vpc_network.name

  deny {
    protocol = var.ingress-deny-ftp-firewall-rule[0].tcp_protocol
    ports    = var.ingress-deny-ftp-firewall-rule[0].ports
  }
  priority      = var.ingress-deny-ftp-firewall-rule[0].priority
  source_ranges = var.ingress-deny-ftp-firewall-rule[0].cidr_block
}


