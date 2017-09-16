resource "ibm_container_cluster" "kubecluster" {
  name         = "${var.cluster_name}-${random_id.name.hex}"
  datacenter   = "${var.datacenter}"
  org_guid     = "${data.ibm_org.org.id}"
  space_guid   = "${data.ibm_space.space.id}"
  account_guid = "${data.ibm_account.account.id}"
  machine_type = "${var.machine_type}"
  public_vlan_id = "${var.public_vlan_id}"
  private_vlan_id = "${var.private_vlan_id}"
  no_subnet    = true

  workers = "${var.workers_map}"
}

data "ibm_container_cluster_config" "cluster_config" {
  cluster_name_id = "${ibm_container_cluster.kubecluster.name}"
  org_guid        = "${data.ibm_org.org.id}"
  space_guid      = "${data.ibm_space.space.id}"
  account_guid    = "${data.ibm_account.account.id}"
}

variable "workers_map" {
  default = [
    { name = "worker1" },
    { name = "worker2" }
  ]
}

variable "cluster_name" {
  default = "kubecluster"
}
variable "region" {
  default = "us-south"
}
variable "datacenter" {
  default = "dal12"
}
variable "machine_type" {
  default = "u1c.2x4"
}
variable "isolation" {
  default = "public"
}
variable "private_vlan_id" {}
variable "public_vlan_id" {}
variable "subnet_id" {}
