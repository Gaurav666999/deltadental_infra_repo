dev_rgs = {
    "devtodorgwestusfirst" = {
        location = "westus" 
    }   
}

dev_acrs = {
    acr1 = {
        acr_name = "devtodoacrwestus"
        resource_group_name = "devtodorgwestusfirst"
        location = "westus"
        sku = "Standard"
    }
}

dev_aks = {
    aks1 = {
        aks_name = "devtodoakswestus"
        resource_group_name = "devtodorgwestusfirst"
        location = "westus"
        dns_prefix = "devtodoaks"
        node_count = 1
        vm_size    = "Standard_DS2_V2"
        tags = {
            environment = "development"
            project = "todoapp"
        }
    }

}

servers_dbs = {
  "devtododbsrvwuswus" = {
    resource_group_name            = "devtodorgwestusfirst"
    location                       = "westus"
    version                        = "12.0"
    administrator_login            = "devopsadmin"
    administrator_login_password   = "P@ssw01rd@123"
    allow_access_to_azure_services = true
    dbs                            = ["todoappdb"]
  }
}








