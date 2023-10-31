module "network" {
  source = "./modules/network"
  location = var.location
  resource_group_name = var.resource_group_name
  address_space = var.address_space
}

module "compute" {
  source = "./modules/compute"
  location = var.location
  resource_group_name = var.resource_group_name
  network_interface_ids = module.network.nic_ids
}

module "loadbalancer" {
  source = "./modules/loadbalancer"
  location = var.location
  resource_group_name = var.resource_group_name
  backend_address_pool_ids = module.compute.backend_address_pool_ids
}
