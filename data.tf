data "oci_identity_compartments" "compartment" {
  compartment_id            = var.tenancy_ocid
  compartment_id_in_subtree = true
  filter {
    name   = "name"
    values = [var.compartment_id]
  }
}

data "oci_dns_views" "view" {
    compartment_id = var.compartment_id
    scope = "PRIVATE"
    display_name = var.view_display_name
}

data "oci_dns_resolvers" "resolver" {
    compartment_id = var.compartment_id
    scope = "PRIVATE"
    display_name = var.resolver_id
}