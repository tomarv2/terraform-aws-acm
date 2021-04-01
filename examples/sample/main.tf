module "acm" {
  source = "../../"

  zone_id     = "Z123456789"
  domain_name = "demo.example.com"
  # ---------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}
