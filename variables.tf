# Types can be
    # 1. string
    # 2. number
    # 3. bool
    # 4. list(<TYPE>)
    # 5. set(<TYPE>)
    # 6. map(<TYPE>)
    # 7. object({<ATTR NAME> = <TYPE>, ... })
    # 8. tuple([<TYPE>, ...])

variable "project" {
  description = "GCP Project Name"
  type = string
}

variable "region" {
  description = "region"
  type = string
}

variable "zone" {
  description = "zone"
  type = string
}

variable "cidr_ranges" {
  description = "cidr blocks for subnet(s)"
  type = list(object({
    cidr_block = string
    name = string
  }))
}

variable "vpc_name" {
    description = "VPC netowork name"
    type = string
  
}

variable "vpc_mtu" {
    type = number  
}

variable "ingress-deny-snpp-firewall-rule" {
  description = "ingress snpp deny firewall rule apply to all"
  type = list(object({
    name = string
    cidr_block = list(string)
    ports = list(string)
    tcp_protocol = string
    udp_protocol = string
    priority = number
  }))
}

variable "ingress-deny-ftp-firewall-rule" {
  description = "ingress ftp deny firewall rule apply to all"
  type = list(object({
    name = string
    cidr_block = list(string)
    ports = list(string)
    tcp_protocol = string
    priority = number
  }))
}

variable "allow-ssh-from-home-to-vpn-firewall-rule" {
  description = "ingress tcp allow firewall rule apply to india-vpn"
  type = list(object({
    name = string
    cidr_block = list(string)
    ports = list(string)
    tcp_protocol = string
    priority = number
    tags = list(string)
  }))
}

variable "allow-ssh-for-all" {
  description = "ingress tcp allow firewall rule apply to all"
  type = list(object({
    name = string
    cidr_block = list(string)
    ports = list(string)
    tcp_protocol = string
    priority = number
    tags = list(string)
  }))
}