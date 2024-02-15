module "google_networks" {
  source          = "../../../modules/gcp_vpc"
  nat_subnet_name = "application-subnet"
  #==========================SUBNETS=============================
  subnets = var.subnets
  #============================ROUTES=============================
  routes = var.routes
  #=========================FIREWALL-RULES========================
  firewall_rules = var.firewall_rules
#============================== NAT ==================================
  nat_name = var.nat_name
}

######################################
############ GKE CLUSTER #############
######################################
data "google_project" "project" {
  project_id = var.project_id
}

module "gke_cluster" {
  source                  = "../../../modules/gke_cluster"
  cluster_name            = var.gke_cluster_name
  network_name            = module.google_networks.vpc_name
  subnet_name             = module.google_networks.subnet_name
  project_id              = var.project_id
  region                  = var.gcp_region
  location                = var.location
  node_pools              = var.node_pools
  enable_private_nodes    = var.enable_private_nodes
  master_ipv4_cidr_block  = var.master_ipv4_cidr_block
  enable_private_endpoint = var.enable_private_endpoint
  cluster_resource_labels = { "mesh_id" : "proj-${data.google_project.project.number}" }
  min_master_version      = "1.27.8-gke.1067004"
}

