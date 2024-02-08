resource "oci_dns_view" "view" {
    compartment_id      = var.compartment_id
    scope               = "PRIVATE"
    defined_tags        = var.defined_tags
    display_name        = var.display_name
    freeform_tags       = var.freeform_tags
}