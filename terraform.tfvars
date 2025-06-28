resource_group_name = "rg_avd_enterprise"
location            = "easteurope"
vnet_name           = "avd-pool-vnet"
vnet_address_space  = ["10.0.0.0/16"]

subnets = {
  "subnet1" = ["10.0.1.0/24"]
  "subnet2" = ["10.0.2.0/24"]
  "subnet3" = ["10.0.3.0/24"]
  "subnet4" = ["10.0.4.0/24"]
  "subnet5" = ["10.0.5.0/24"]
}

host_pools = {
  "department1" = {
    name                    = "avd_host_pool_dept1"
    type                    = "pooled"
    friendly_name           = "Department 1 for host pool"
    validation_description  = false
    maximum_sessions        = 10
    workspace_description   = "workspace for department 1"
    workspace_friendly_name = "dept1 workspace"
  }
  "department2" = {
    name                    = "avd_host_pool_dept2"
    type                    = "pooled"
    friendly_name           = "Department 2 for host pool"
    validation_description  = false
    maximum_sessions        = 10
    workspace_description   = "workspace for department 2"
    workspace_friendly_name = "dept2 workspace"
  }

}