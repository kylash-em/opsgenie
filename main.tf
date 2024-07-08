locals {
  instance = "master"
  stage    = "staging"
}

module "env" {
  source           = "git@github.com:emnify/tf-module-environment.git?ref=3.0.3"
  instance         = local.instance
  stage            = local.stage
  name             = "opsgenie"
  application_type = "Opsgenie"
  squad            = "AN"
}


module "opsgenie" {
  source              = "./modules/opsgenie"
  opsgenie_users_list = local.opsgenie_users

}