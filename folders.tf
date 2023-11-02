module "cs-common" {
  source  = "terraform-google-modules/folders/google"
  version = "~> 3.2"

  parent = "organizations/${var.org_id}"
  names = [
    "Common",
  ]
}

module "cs-teams" {
  source  = "terraform-google-modules/folders/google"
  version = "~> 3.2"

  parent = "organizations/${var.org_id}"
  names = [
    "ITDept",
    "HRDept",
    "FinanceDept",
  ]
}

module "cs-envs" {
  for_each = module.cs-teams.ids
  source   = "terraform-google-modules/folders/google"
  version  = "~> 3.2"

  parent = each.value
  names = [
    "Production",
    "Non-Production",
    "Development",
  ]
}
