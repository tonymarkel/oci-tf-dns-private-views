<<<<<<< HEAD
data "oci_identity_compartments" "compartment" {
  count          = var.compartment_id != null ? 1 : 0
  compartment_id            = var.tenancy_id
  compartment_id_in_subtree = true
  filter {
    name   = "name"
    values = [var.compartment_id]
  }
}

data "oci_dns_views" "view" {
    count          = var.compartment_id != null ? 1 : 0
    compartment_id = var.compartment_id
    scope = "PRIVATE"
    display_name = var.display_name
}

data "oci_dns_resolvers" "resolver" {
  count          = var.compartment_id != null ? 1 : 0
    compartment_id = var.compartment_id
    scope = "PRIVATE"
    display_name = var.resolver_id
}
=======
data "oci_dns_views" "view" {
    compartment_id = var.compartment_id
    scope = "PRIVATE"
    display_name = var.view_id
}
>>>>>>> 7273fb113f3237db4e579e5bd44b58a2613e69f1
