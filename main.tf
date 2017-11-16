provider "ibm" {
  bluemix_api_key = "${var.bluemix_api_key}"
  region = "${var.region}"
}

data "ibm_org" "org" {
  org = "${var.org}"
}

data "ibm_space" "space" {
  org   = "${var.org}"
  space = "${var.space}"
}

data "ibm_account" "account" {
  org_guid = "${data.ibm_org.org.id}"
}

resource "random_id" "name" {
  byte_length = 4
}

variable "bluemix_api_key" {
  description = "Your IBM Cloud API key. You can get the value by running bx iam api-key-create <key name>."
}
variable "org" {
  description = "Your IBM Cloud org name."
}
variable "space" {
  default = "dev"
  description = "Your IBM Cloud space name."
}

