module "certificate" {
  source = "../acm-certificate"

  domains = [
    var.webapp_domain_name,
    var.static_domain_name,
    var.index_domain_name,
    local.cloudfront_domain_name,
  ]

  legacy = true
}
