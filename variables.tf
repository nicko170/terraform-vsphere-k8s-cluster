#====================#
# vCenter connection #
#====================#

variable "vsphere_user" {
  description = "vSphere user name"
}

variable "vsphere_password" {
  description = "vSphere password"
}

variable "vsphere_vcenter" {
  description = "vCenter server FQDN or IP"
}

variable "vsphere_unverified_ssl" {
  description = "Is the vCenter using a self signed certificate (true/false)"
}

variable "vsphere_datacenter" {
  description = "vSphere datacenter"
}

variable "vsphere_drs_cluster" {
  description = "vSphere cluster"
  default     = ""
}

variable "vsphere_resource_pool" {
  description = "vSphere resource pool"
}

variable "vsphere_enable_anti_affinity" {
  description = "Enable anti affinity between master VMs and between worker VMs (DRS need to be enable on the cluster)"
  default     = "false"
}

variable "vsphere_vcp_user" {
  description = "vSphere user name for the Kubernetes vSphere Cloud Provider plugin"
}

variable "vsphere_vcp_password" {
  description = "vSphere password for the Kubernetes vSphere Cloud Provider plugin"
}

variable "vsphere_vcp_datastore" {
  description = "vSphere default datastore for the Kubernetes vSphere Cloud Provider plugin"
}

#===========================#
# Kubernetes infrastructure #
#===========================#

variable "action" {
  description = "Which action have to be done on the cluster (create, add_worker, remove_worker, or upgrade)"
  default     = "create"
}

variable "worker" {
  type        = "list"
  description = "List of worker IPs to remove"

  default = [""]
}

variable "vm_user" {
  description = "SSH user for the vSphere virtual machines"
}

variable "vm_password" {
  description = "SSH password for the vSphere virtual machines"
}

variable "vm_privilege_password" {
  description = "Sudo or su password for the vSphere virtual machines"
}

variable "vm_store_worker" {
  description = "Sudo or su password for the vSphere virtual machines"
}
variable "vm_store_master" {
  description = "Sudo or su password for the vSphere virtual machines"
}
variable "vm_distro" {
  description = "Linux distribution of the vSphere virtual machines (ubuntu/centos/debian/rhel)"
}

variable "vm_datastore" {
  description = "Datastore used for the vSphere virtual machines"
}

variable "vm_network" {
  description = "Network used for the vSphere virtual machines"
}

variable "vm_template" {
  description = "Template used to create the vSphere virtual machines (linked clone)"
}

variable "vm_folder" {
  description = "vSphere Virtual machines folder"
}

variable "vm_linked_clone" {
  description = "Use linked clone to create the vSphere virtual machines from the template (true/false). If you would like to use the linked clone feature, your template need to have one and only one snapshot"
  default     = "false"
}

variable "k8s_kubespray_url" {
  description = "Kubespray git repository"
  default     = "https://github.com/kubernetes-incubator/kubespray.git"
}

variable "k8s_kubespray_version" {
  description = "Kubespray version"
  default     = "2.8.2"
}

variable "k8s_version" {
  description = "Version of Kubernetes that will be deployed"
  default     = "1.12.5"
}

variable "vm_master_ips" {
  type        = "map"
  description = "IPs used for the Kubernetes master nodes"
}

variable "vm_worker_ips" {
  type        = "map"
  description = "IPs used for the Kubernetes worker nodes"
}

variable "vm_netmask" {
  description = "Netmask used for the Kubernetes nodes and HAProxy (example: 24)"
}

variable "vm_network_store" {
  description = "Netmask used for the Kubernetes nodes and HAProxy (example: 24)"
}

variable "vm_gateway" {
  description = "Gateway for the Kubernetes nodes"
}

variable "vm_dns" {
  description = "DNS for the Kubernetes nodes"
}

variable "vm_domain" {
  description = "Domain for the Kubernetes nodes"
}

variable "vm_master_cpu" {
  description = "Number of vCPU for the Kubernetes master virtual machines"
}

variable "vm_master_ram" {
  description = "Amount of RAM for the Kubernetes master virtual machines (example: 2048)"
}

variable "vm_worker_cpu" {
  description = "Number of vCPU for the Kubernetes worker virtual machines"
}

variable "vm_worker_ram" {
  description = "Amount of RAM for the Kubernetes worker virtual machines (example: 2048)"
}

variable "vm_name_prefix" {
  description = "Prefix for the name of the virtual machines and the hostname of the Kubernetes nodes"
}


