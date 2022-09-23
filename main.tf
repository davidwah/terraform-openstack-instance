terraform {
required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.35.0"
    }
  }
}

# Configure the OpenStack Provider
provider "openstack" {
  user_name   = ${USERNAME_OS}
  tenant_name = ${PROJECTNAME_OS}
  password    = ${PASSWORD_OS}
  auth_url    = ${URL_OS}
  region      = "RegionOne"
}

# Create a web server
resource "openstack_compute_instance_v2" "test-server" {
  name            = "centos-server"
  image_id        = "092e2045-3df3-45e9-b8fb-189885d17b10"
  flavor_id       = "84e73156-3adb-4d33-aafb-b6e1988b1baf"
  key_pair        = "node-david"
  security_groups = ["sg01"]

  metadata = {
    this = "that"
  }

  network {
    name = "net-int0"
  }
}
