module "avd_host_pools" {
  source = "git::https://github.com/Tapeshmz10403/terraform-azure-avd-virtual-desktop-host-pool.git?ref=v1.0.4"

  resource_group_name = var.resource_group_name
  location            = var.location
  vnet_name           = var.vnet_name
  vnet_address_space  = var.vnet_address_space
  subnets             = var.Subnets
  host_pools          = var.host_pools

}


