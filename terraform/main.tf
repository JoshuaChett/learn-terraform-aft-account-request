module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "joshuachett+v1test@gmaail.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "AFT-OU"
    SSOUserEmail              = "joshuachett+sso@gmail.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "Test"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}


module "site1" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "joshuachett+v1site1@gmail.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "AFT-OU"
    SSOUserEmail              = "joshuachett+sso@gmail.com"
    SSOUserFirstName          = "AFT"
    SSOUserLastName           = "Test"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "site-accounts"
}
