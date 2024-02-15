# variable "project_id" {}
variable "gcp_region" {}

variable "subnetwork_name" {}
variable "subnetwork_region" {}

######################################
############ GKE CLUSTER #############
######################################
variable "gke_cluster_name" {
  type        = string
  description = "The name of the cluster (required)"
}

variable "location" {
  type        = string
  description = ""
}

variable "node_pools" {
  description = "List of maps containing node pools"
}

variable "master_ipv4_cidr_block" {
  type        = string
  description = "(Beta) The IP range in CIDR notation to use for the hosted master network"
}

variable "enable_private_endpoint" {
  type        = bool
  description = "(Beta) Whether the master's internal IP address is used as the cluster endpoint"
}

variable "enable_private_nodes" {
  type        = bool
  description = "(Beta) Whether nodes have internal IP addresses only"
}

#vpc

variable "project_id" {
  description = "Project name where the resource will be created."
  type        = string
}

variable "region" {
  description = "Region where by default your resource will be created."
  type        = string
}
variable "main_zone" {
  description = "Zone where by default your resource will be created."
  type        = string
}

#============================= SUBNETWORKS VARIABLES ===================================
variable "subnets" {
  type = list(map(string))
}

#============================ FIREWALL RULES VARIABLES =================================
variable "firewall_rules" {
  description = "List of custom rule definitions (refer to variables file for syntax)."
  default     = []
  type = list(object({
    name        = string
    direction   = string
    ranges      = list(string)
    source_tags = list(string)
    target_tags = list(string)
    allow = list(object({
      protocol = string
      ports    = list(string)
    }))
    deny = list(object({
      protocol = string
      ports    = list(string)
    }))
  }))
}
#========================== ROUTERS ==================================
variable "routes" {

}
#========================== NAT ==================================
variable "nat_name" {
  type = string
}