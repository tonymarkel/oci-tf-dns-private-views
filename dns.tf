module "view" {
    source                  = "./modules/network/dns/view"
    for_each                = (var.views != null || var.views != {}) ? var.views : {}
    compartment_id          = each.value.compartment_id
    defined_tags            = each.value.defined_tags
    display_name            = each.value.display_name
    freeform_tags           = each.value.freeform_tags
}

module "dns_resolver" {
    source                  = "./modules/network/dns/resolver"
    for_each                = (var.dns_resolvers != null || var.dns_resolvers != {}) ? var.dns_resolvers : {}
    depends_on              = [module.view]
    view_id                 = each.value.view_id 
    compartment_id          = each.value.compartment_id
    tenancy_id              = var.tenancy_id
    defined_tags            = each.value.defined_tags
    display_name            = each.value.display_name
    freeform_tags           = each.value.freeform_tags
    scope                   = each.value.scope != null ? each.value.scope : null
    rules                   = each.value.rules
}

module "dns_resolver_endpoint" {
    source                  = "./modules/network/dns/resolver_endpoint"
    for_each                = (var.dns_resolver_endpoints != null || var.dns_resolver_endpoints != {}) ? var.dns_resolver_endpoints : {}
    depends_on              = [module.dns_resolver]
    endpoint_type           = each.value.endpoint_type
    forwarding_address      = each.value.forwarding_address
    is_forwarding           = each.value.is_forwarding
    is_listening            = each.value.is_listening
    name                    = each.value.name
    vcn_display_name        = each.value.vcn_display_name
    resolver_id             = each.value.resolver_id
    subnet_id               = each.value.subnet_id
    scope                   = each.value.scope != null ? each.value.scope : null
    nsg_ids                 = each.value.nsg_ids
}
