resource oci_dns_view dns_view {
  compartment_id = var.compartment_id
  defined_tags = var.defined_tags
  display_name = var.display_name
  freeform_tags = var.freeform_tags
  scope = var.scope != null ? var.scope : null
}