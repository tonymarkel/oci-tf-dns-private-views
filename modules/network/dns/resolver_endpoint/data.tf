data "oci_core_subnets" "subnet" {
    compartment_id      = var.compartment_id
    display_name        = var.subnet_id
    vcn_id              = data.oci_core_vcns.vcns.virtual_networks[0].id
}

data "oci_core_vcns" "vcns" {
    compartment_id      = var.compartment_id
    display_name        = var.vcn_display_name
}

data "oci_core_vcn_dns_resolver_association" "vcn_dns_resolver_association" {
	#Required
	vcn_id              = data.oci_core_vcns.vcns.virtual_networks[0].id
}