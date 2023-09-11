module "dns_resolver" {
    source                  = "./modules/network/dns/resolver"
    for_each                = (var.dns_resolvers != null || var.dns_resolvers != {}) ? var.dns_resolvers : {}
<<<<<<< HEAD
    view_id                 = each.value.view_id 
    compartment_id          = each.value.compartment_id
    tenancy_id              = var.tenancy_id
=======
    view_id                 = each.value.view_id
    compartment_id          = data.oci_identity_compartments.compartment.id[0]
>>>>>>> 7273fb113f3237db4e579e5bd44b58a2613e69f1
    defined_tags            = each.value.defined_tags
    display_name            = each.value.display_name
    freeform_tags           = each.value.freeform_tags
    scope                   = each.value.scope != null ? each.value.scope : null
    rules                   = each.value.rules
}

module "dns_resolver_endpoint" {
    source                  = "./modules/network/dns/resolver_endpoint"
    for_each                = (var.dns_resolver_endpoints != null || var.dns_resolver_endpoints != {}) ? var.dns_resolver_endpoints : {}
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
