resource oci_dns_resolver dns_resolver {
  attached_views {
    view_id                   = var.dns_view_id
  }
  compartment_id           = var.compartment_id
  resolver_id              = var.resolver_id
  defined_tags             = var.defined_tags
  display_name             = var.display_name
  freeform_tags            = var.freeform_tags
  scope                    = var.scope
  # Rules
  dynamic "items" {
    for_each = var.dns_resolver[var.key_name].resolver_rules != [] ? var.dns_resolver[var.key_name].resolver_rules : []
    rules {
        action                    = items.value.action
        client_address_conditions = items.value.client_address_conditions
        destination_addresses     = items.value.destination_addresses
        qname_cover_conditions    = items.qname_cover_conditions
        source_endpoint_name      = items.source_endpoint_name
    }
  }
}