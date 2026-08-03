rgs = {
  rg1 = {
    name     = "rg-komal"
    location = "centralindia"
  }
   rg2 = {
    name     = "rg-normal"
    location = "centralindia"
  }
   rg3 = {
    name     = "rg-normal3"
    location = "centralindia"
  }
}

vnet = {
  vnet1 = {
    name                = "vnet-komal"
    location            = "centralindia"
    resource_group_name = "rg-komal"
    address_space       = ["10.0.0.0/16"]
  }
}

subnets = {
  snet1 = {
    name                 = "frontend-subnet"
    resource_group_name  = "rg-komal"
    virtual_network_name = "vnet-komal"
    address_prefixes     = ["10.0.1.0/24"]
  }

  sent2 = {
    name                 = "backend-subnet"
    resource_group_name  = "rg-komal"
    virtual_network_name = "vnet-komal"
    address_prefixes     = ["10.0.2.0/24"]
  }
}

public_ips = {
  pip1 = {
    public_ip_name      = "pip_komal_frontend_vm"
    resource_group_name = "rg-komal"
    location            = "centralindia"
    allocation_method   = "Static"
  }
  pip2 = {
    public_ip_name      = "pip_komal_backend_vm"
    resource_group_name = "rg-komal"
    location            = "centralindia"
    allocation_method   = "Static"
  }
}


vms = {
  vm1 = {
    nic_name        = "frontend-nic"
    location        = "centralindia"
    rg_name         = "rg-komal"
    nic_subnet_name = "frontend-subnet"
    nic_vnet_name   = "vnet-komal"
    nic_pip_name    = "pip-komal-frontend-vm"
    vm_name         = "frontend_vm"
    vm_size         = "Standard_B1s"
    admin_username  = "frontend_user"
    admin_password  = "Password@12345"
    image_publisher = "canonical"
    image_offer     = "0001-com-ubuntu-server-jammy"
    image_sku       = "22_04-lts"
    image_version   = "latest"
  }

  vm2 = {
    nic_name        = "backend-nic"
    location        = "centralindia"
    rg_name         = "rg-komal"
    nic_subnet_name = "backend-subnet"
    nic_vnet_name   = "vnet-komal"
    nic_pip_name    = "pip-komal-backend-vm"
    vm_name         = "backend_vm"
    vm_size         = "Standard_B1s"
    admin_username  = "backend_user"
    admin_password  = "Password@123456"
    image_publisher = "canonical"
    image_offer     = "0001-com-ubuntu-server-jammy"
    image_sku       = "22_04-lts"
    image_version   = "latest"
  
  }
}
