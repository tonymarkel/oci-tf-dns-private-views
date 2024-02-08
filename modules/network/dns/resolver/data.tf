data "oci_dns_views" "view" {
  count                     = var.view_id != null ? 1 : 0
  compartment_id            = var.compartment_id
  scope                     = "PRIVATE"
  display_name              = var.view_id
}

data "oci_core_vcns" "vcns" {
  compartment_id            = var.compartment_id
  display_name              = var.vcn_id
}

data "oci_core_vcn_dns_resolver_association" "vcn_dns_resolver_association" {
	vcn_id = data.oci_core_vcns.vcns.virtual_networks[0].id
}