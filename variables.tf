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