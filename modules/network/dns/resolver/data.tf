data "oci_dns_views" "view" {
    compartment_id = var.compartment_id
    scope = "PRIVATE"
    display_name = var.view_id
}