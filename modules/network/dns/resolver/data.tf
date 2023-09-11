data "oci_identity_compartments" "compartment" {
  count                     = var.compartment_id != null ? 1 : 0
  compartment_id            = var.tenancy_id
  compartment_id_in_subtree = true
  filter {
    name                      = "name"
    values                    = [var.compartment_id]
  }
}

data "oci_dns_views" "view" {
  count                     = var.view_id != null ? 1 : 0
  compartment_id            = var.compartment_id
  scope                     = "PRIVATE"
  display_name              = var.view_id
}

data "oci_dns_resolvers" "resolver" {
  count          = var.compartment_id != null ? 1 : 0
  compartment_id = var.compartment_id
  scope = "PRIVATE"
  display_name = var.resolver_id
}