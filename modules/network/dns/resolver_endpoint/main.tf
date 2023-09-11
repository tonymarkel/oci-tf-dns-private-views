resource oci_dns_resolver_endpoint resolver_endpoint {
  endpoint_type      = var.endpoint_type
  forwarding_address = var.forwarding_address
  is_forwarding      = var.is_forwarding
  is_listening       = var.is_listening
  listening_address  = var.listening_address != "" ? var.listening_address : null
  name               = var.name
  nsg_ids            = var.nsg_ids
  resolver_id        = var.resolver_id
  scope              = var.scope
  subnet_id          = data.oci_core_subnets.subnet.id
}
