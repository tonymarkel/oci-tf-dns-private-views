# data "oci_identity_compartments" "compartments" {
#   compartment_id            = var.tenancy_id
#   compartment_id_in_subtree = true
#   name = 
# }

data "oci_dns_views" "view" {
  count                     = var.view_id != null ? 1 : 0
  compartment_id            = var.compartment_id
  scope                     = "PRIVATE"
  display_name              = var.view_id
}

data "oci_core_vcns" "vcns" {
  # depends_on = [module.vcns] # Uncomment when creating resolver and vcn together
  # for_each                  = var.dns_resolvers != null ? var.dns_resolvers : {}
  # compartment_id          = each.value.network_compartment_id != null ? (length(regexall("ocid1.compartment.oc1*", each.value.network_compartment_id)) > 0 ? each.value.network_compartment_id : var.compartment_ocids[each.value.network_compartment_id]) : var.compartment_ocids[each.value.network_compartment_id]    compartment_id          = data.oci_identity_compartments.compartment.compartments[0].id
  # compartment_id            = var.compartment_id
  compartment_id            = var.compartment_id
  display_name              = var.vcn_id
}

# data "oci_dns_resolvers" "resolver" {
#   #count          = var.compartment_id != null ? 1 : 0
#   compartment_id = var.compartment_id
#   scope = "PRIVATE"
#   display_name = var.resolver_id
# }

data "oci_core_vcn_dns_resolver_association" "vcn_dns_resolver_association" {
	#Required
	vcn_id = data.oci_core_vcns.vcns.virtual_networks[0].id
}