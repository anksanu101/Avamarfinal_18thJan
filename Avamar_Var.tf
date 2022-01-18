variable "Avamar_rg" {
  description = "Please mention the Resource Group name which is already created in Azure"
  default     = "Avamarrg"
}


variable "Avamar_Vnet" {
  description = "Please mention the Virtual Network name which is already created in Azure"
  default     = "AvamarVnet"
}

variable "Avamar_Subnet" {
  description = "Please mention the Subnet name which is already created in Azure"
  default     = "Avamarsubnet"
}


variable "Avamar_Publisher" {
  description = "Please mention the Dell Emc Publisher name"
  default     = "dellemc"
}

variable "Avamar_EMC_Plan" {
  description = "Please mention the Dell Emc Virtual Edition name"
  default     = "avamar-virtual-edition-1940"
}

variable "Avamar_EMC_offer" {
  description = "Please mention the Dell Emc Publisher name"
  default     = "dell-emc-avamar-virtual-edition"
}

variable "Avamar_Nic" {
  description = "Please mention the Nic name"
  default     = "Avamar_Nic"
}

variable "Avamar_IpConfig" {
  description = "Please mention the Nic name"
  default     = "testconfiguration1"
}

variable "Avamar_VM_Name" {
  description = "Please mention the VM name"
  default     = "azuremc"
}


variable "Avamar_VM_Size" {
  description = "Please mention the VM name"
  default     = "Standard_DS1_v2"
}


variable "Avamar_Disk" {
  default = "disk06"
}


variable "Avamar_Password" {
  default = "akash"
}





























