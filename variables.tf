#########################
## Private DNS         ##
#########################

variable "views" {
  description                = "To create private views"
  type                       = map(object({
    compartment_id             = string
    defined_tags               = optional(map(any))
    display_name               = string
    freeform_tags              = optional(map(any))
  }))
}

variable "dns_resolvers" {
  description                = "To update existing DNS Resolvers"
  type                       = map(object({
    view_id                     = string
    compartment_id             = string
    defined_tags               = optional(map(any))
    display_name               = string
    freeform_tags              = optional(map(any))
    resolver_id                = string
    rules                      = optional(list(object({
      action                     = string
      client_address_conditions  = optional(list(string))
      destination_addresses      = optional(list(string))
      qname_cover_conditions     = optional(list(string))
      source_endpoint_name       = string
    })))
    scope                      = optional(string)
  }))
  default                    = {}
}

variable "dns_resolver_endpoints" {
  description                = "To provision DNS Resolver Endpoints"
  type                       = map(object({
    endpoint_type              = string
    forwarding_address         = string
    is_forwarding              = string
    is_listening               = string
    listening_address          = string
    name                       = string
    resolver_id                = string
    scope                      = optional(string)
    vcn_display_name           = string
    subnet_id                  = string
    nsg_ids                    = optional(list(string))
  }))
  default                    = {}
}
variable "tenancy_id" {
}
