data "oci_core_subnets" "subnet" {
    compartment_id = var.compartment_id
    display_name = var.subnet_id
    vcn_id = data.oci_core_vcns.vcn.id
}

data "oci_core_vcns" "vcn" {
    compartment_id = var.compartment_id
    display_name = var.vcn_display_name
}
