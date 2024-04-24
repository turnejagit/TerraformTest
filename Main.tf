module "S3" {
source = "git::https://@github.com/turnejagit/TerraformTest//Modules/S3"
}

module "VPC" {
source = "git::https://@github.com/turnejagit/TerraformTest//Modules/VPC"
}