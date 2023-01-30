resource_group_name = "diskrg"
location = "east us"
azurerm_managed_disk = ["disk","datadisk","logdisk","osdisk"]
tagging = {
    env = "dev"
    createdby = "TSteam"
}
organization = "TS"
environment = "Dev"
application = "App"