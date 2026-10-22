rgs = {
  rg1 = {
    name     = "rg_dev_samir"
    location = "centralindia"
  }
    rg2 = {
    name     = "rg_dev_samir1"
    location = "centralindia"
  }
}
vnets = {
  Vnet-1 = {
    name                = "vnet_express"
    location            = "centralindia"
    resource_group_name = "rg_dev_samir"
    address_space       = ["10.0.0.0/16"]
  }
}

subnets = {
  Subnet-1 = {
    name                 = "frountend_subnet"
    resource_group_name  = "rg_dev_samir"
    virtual_network_name = "vnet_express"
    address_prefixes     = ["10.0.1.0/24"]
  }
  Subnet-2 = {
    name                 = "backend_subnet"
    resource_group_name  = "rg_dev_samir"
    virtual_network_name = "vnet_express"
    address_prefixes     = ["10.0.2.0/24"]
  }
}
pips = {
  Pip-1 = {
    name                = "pip-frountend_vm"
    location            = "centralindia"
    resource_group_name = "rg_dev_samir"
    allocation_method   = "Static"
  }
  Pip-10 = {
    name                = "pip-backend_vm"
    location            = "centralindia"
    resource_group_name = "rg_dev_samir"
    allocation_method   = "Static"

  }
}
nsgs= {
  nsg-1 = {
    name                = "frountend-nsg"
    location            = "centralindia"
    resource_group_name = "rg_dev_samir"
    dpr                 = "80"

  }
  nsg-2 = {
    name                = "backend-nsg"
    location            = "centralindia"
    resource_group_name = "rg_dev_samir"
    dpr                 = "80"

  }
}
vms = {

  vm-1 = {
    nic-name            = "frountend-vm-nic"
    location            = "centralindia"
    resource_group_name = "rg_dev_samir"
    nic-subnet-name     = "frountend_subnet"
    nic-vnet-name       = "vnet_express"
    nic_pip_name        = "pip-frountend_vm"
    vm-name             = "frountend-vm"
    vm-size             = "Standard_D2s_v5"
    admin_username      = "samirkumar"
    admin_password      = "samir@123"
  }

  vm-2 = {
    nic-name            = "backend-vm-nic"
    location            = "centralindia"
    resource_group_name = "rg_dev_samir"
    nic-subnet-name     = "backend_subnet"
    nic-vnet-name       = "vnet_express"
    nic_pip_name        = "pip-backend_vm"
    vm-name             = "backend-vm"
    vm-size             = "Standard_D2s_v5"
    admin_username      = "samirkumar"
    admin_password      = "samir@123"
  }
}