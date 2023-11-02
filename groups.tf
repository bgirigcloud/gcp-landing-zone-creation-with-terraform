# Required if using User ADCs (Application Default Credentials) for Cloud Identity API.
provider "google-beta" {
  user_project_override = true
  billing_project       = ""
}

# In order to create google groups, the calling identity should have at least the
# Group Admin role in Google Admin. More info: https://support.google.com/a/answer/2405986

module "cs-gg-itdept-prod-service" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "itdept-prod-service@advikaapp.com"
  display_name = "itdept-prod-service"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}

module "cs-gg-itdept-nonprod-service" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "itdept-nonprod-service@advikaapp.com"
  display_name = "itdept-nonprod-service"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}

module "cs-gg-hrdept-prod-service" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "hrdept-prod-service@advikaapp.com"
  display_name = "hrdept-prod-service"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}

module "cs-gg-hrdept-nonprod-service" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "hrdept-nonprod-service@advikaapp.com"
  display_name = "hrdept-nonprod-service"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}
