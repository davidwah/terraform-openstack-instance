# Terraform Openstack Instance

## How to run
* clone this repo project
```
git clone https://github.com/davidwah/terraform-openstack-instance.git
```
* input variable value for this command
```
provider "openstack" {
  user_name   = ${USERNAME_OS}
  tenant_name = ${PROJECTNAME_OS}
  password    = ${PASSWORD_OS}
  auth_url    = ${URL_OS}
  region      = "RegionOne"
}
```
* init project terraform
```
terraform init
```
* creates an execution plan
```
terraform plan
```
* executes terraform plan
```
terraform apply
```
 
