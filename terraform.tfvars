project  = "country-370217"
region   = "asia-south1"
zone     = "asia-south1-a"
vpc_name = "india"
vpc_mtu  = 1460
cidr_ranges = [
  { cidr_block = "172.16.0.0/16", name = "telangana-as-1" },
  { cidr_block = "172.21.0.0/16", name = "karnataka-as-1" },
  { cidr_block = "172.18.0.0/16", name = "mumbai-as-1" }
]

ingress-deny-snpp-firewall-rule = [
  { name         = "india-deny-snpp-port",
    cidr_block   = ["0.0.0.0/0"],
    ports        = ["444", "50000-50004"],
    tcp_protocol = "tcp",
    udp_protocol = "udp",
    priority     = 500
  }
]

ingress-deny-ftp-firewall-rule = [
  { name         = "india-deny-ftp-port",
    cidr_block   = ["0.0.0.0/0"],
    ports        = ["21"],
    tcp_protocol = "tcp"
    priority     = 1000
  }
]

allow-ssh-from-home-to-vpn-firewall-rule = [
  { name         = "india-allow-tcp-port",
    cidr_block   = ["172.16.0.12/32"],
    ports        = ["22"],
    tcp_protocol = "tcp"
    priority     = 997
    tags = [ "india-vpn" ]
  }
]
allow-ssh-for-all = [
  { name         = "india-allow-ssh-all",
    cidr_block   = ["172.18.0.12/32"],
    ports        = ["22"],
    tcp_protocol = "tcp"
    priority     = 999
    tags = [ "ssh" ]
  }
]
