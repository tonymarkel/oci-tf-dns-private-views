resource oci_dns_resolver dns_resolver {
  attached_views {
    view_id                 = data.oci_dns_views.view.views[0].view.id
  }
  compartment_id           = data.oci_identity_compartments.compartment[0].id
  resolver_id              = var.resolver_id
  defined_tags             = var.defined_tags
  display_name             = var.display_name
  freeform_tags            = var.freeform_tags
  scope                    = var.scope
  # Rules
  dynamic "rules" {
    for_each = var.rules != null ? var.rules : null
    content {
        action                    = rules.value.action
        client_address_conditions = rules.value.client_address_conditions
        destination_addresses     = rules.value.destination_addresses
        qname_cover_conditions    = rules.value.qname_cover_conditions
        source_endpoint_name      = rules.value.source_endpoint_name
    }
  }
}