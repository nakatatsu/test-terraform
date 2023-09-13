module "put_log" {
  source                 = "../modules/put-log"
  environment            = var.environment
  project                = var.project
  log_archive_account_id = var.log_archive_account_id
  shared_log_backet      = var.shared_log_backet
}

module "encryption" {
  source      = "../modules/encryption"
  environment = var.environment
  project     = var.project
}
