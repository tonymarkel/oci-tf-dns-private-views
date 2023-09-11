data "oci_identity_compartments" "compartment" {
  count                     = var.compartment_id != null ? 1 : 0
  compartment_id            = var.tenancy_ocid
  compartment_id_in_subtree = true
  filter {
    name                      = "name"
    values                    = [var.compartment_id]
  }
}