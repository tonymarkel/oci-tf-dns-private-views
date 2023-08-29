module "dns_resolver" {
    source                  = "./modules/network/dns/resolver"
    for_each                = (var.dns_resolvers != null || var.dns_resolvers != {}) ? var.dns_resolvers : {}
    resolver_id             = data.oci_dns_resolvers.resolver.id[0]
    view_id                 = data.oci_dns_views.view.views.id[0]
    compartment_id          = data.oci_identity_compartments.compartment.id[0]
    defined_tags            = each.value.defined_tags
    display_name            = each.value.display_name
    freeform_tags           = each.value.freeform_tags
    scope                   = each.value.scope != null ? each.value.scope : null
}

module "dns_resolver_endpoint" {
    source                  = "./modules/network/dns/resolver_endpoint"
    for_each                = (var.resolver_endpoints != null || var.resolver_endpoints != {}) ? var.resolver_endpoints : {}
    dns_view_id             = data.oci_dns_views.view.views.id[0]
    compartment_id          = data.oci_identity_compartments.compartment.id[0]
    defined_tags            = each.value.defined_tags
    display_name            = each.value.display_name
    freeform_tags           = each.value.freeform_tags
    scope                   = each.value.scope != null ? each.value.scope : null
    nsg_ids                 = each.value.nsg_ids
    rules                   = each.value.rules
}