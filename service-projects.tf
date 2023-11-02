module "cs-svc-itdept-prod-svc-8w0y" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 14.2"

  name            = "itdept-prod-service"
  project_id      = "itdept-prod-svc-8w0y"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = module.cs-envs["ITDept"].ids["Production"]

  shared_vpc = module.cs-vpc-host-prod-ym491-yk433.project_id

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-itdept-prod-service.name
  group_role = "roles/viewer"
}

module "cs-svc-itdept-nonprod-svc-8w0y" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 14.2"

  name            = "itdept-nonprod-service"
  project_id      = "itdept-nonprod-svc-8w0y"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = module.cs-envs["ITDept"].ids["Non-Production"]

  shared_vpc = module.cs-vpc-host-nonprod-ym491-yk433.project_id

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-itdept-nonprod-service.name
  group_role = "roles/viewer"
}

module "cs-svc-hrdept-prod-svc-8w0y" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 14.2"

  name            = "hrdept-prod-service"
  project_id      = "hrdept-prod-svc-8w0y"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = module.cs-envs["HRDept"].ids["Production"]

  shared_vpc = module.cs-vpc-host-prod-ym491-yk433.project_id

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-hrdept-prod-service.name
  group_role = "roles/viewer"
}

module "cs-svc-hrdept-nonprod-svc-8w0y" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 14.2"

  name            = "hrdept-nonprod-service"
  project_id      = "hrdept-nonprod-svc-8w0y"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = module.cs-envs["HRDept"].ids["Non-Production"]

  shared_vpc = module.cs-vpc-host-nonprod-ym491-yk433.project_id

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-hrdept-nonprod-service.name
  group_role = "roles/viewer"
}
