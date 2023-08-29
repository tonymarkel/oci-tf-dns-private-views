module "dns_view" {
    source   = "./modules/network/dns/view"
    for_each = (var.dns_views != null || var.dns_views != {}) ? var.dns_views : {}
    compartment_id     = each.value.compartment_id != null ? (length(regexall("ocid1.compartment.oc1*", each.value.compartment_id)) > 0 ? each.value.compartment_id : var.compartment_ocids[each.value.compartment_id]) : null
    defined_tags       = each.value.defined_tags
    display_name       = each.value.display_name != null ? each.value.display_name : null
    freeform_tags      = each.value.freeform_tags
    scope              = each.value.scope != null ? each.value.scope : null
}

module "dns_resolver" {
    source                  = "./modules/network/dns/resolver"
    for_each                = (var.dns_resolvers != null || var.dns_resolvers != {}) ? var.dns_resolvers : {}
    dns_view_id             = length(regexall("ocid1.ocid1.dnsview.oc1*", each.value.dns_view_id)) > 0 ? each.value.dns_view_id : merge(module.dns_view.*...)[each.value.dns_view_id]["id"]
    compartment_id          = each.value.compartment_id != null ? (length(regexall("ocid1.compartment.oc1*", each.value.compartment_id)) > 0 ? each.value.compartment_id : var.compartment_ocids[each.value.compartment_id]) : null
    defined_tags            = each.value.defined_tags
    display_name            = each.value.display_name
    freeform_tags           = each.value.freeform_tags
    scope                   = each.value.scope != null ? each.value.scope : null
}

module "dns_resolver_endpoint" {
    source                  = "./modules/network/dns/resolver_endpoint"
    for_each                = (var.resolver_endpoints != null || var.resolver_endpoints != {}) ? var.resolver_endpoints : {}
    dns_view_id             = length(regexall("ocid1.ocid1.dnsview.oc1*", each.value.dns_view_id)) > 0 ? each.value.dns_view_id : merge(module.dns_view.*...)[each.value.dns_view_id]["id"]
    compartment_id          = each.value.compartment_id != null ? (length(regexall("ocid1.compartment.oc1*", each.value.compartment_id)) > 0 ? each.value.compartment_id : var.compartment_ocids[each.value.compartment_id]) : null
    defined_tags            = each.value.defined_tags
    display_name            = each.value.display_name
    freeform_tags           = each.value.freeform_tags
    scope                   = each.value.scope != null ? each.value.scope : null
    nsg_ids                 = each.value.nsg_ids
    rules                   = each.value.rules
}