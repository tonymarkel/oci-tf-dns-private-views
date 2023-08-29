#########################
## Private DNS         ##
#########################

variable "dns_views" {
  description                 = "To provision DNS Views"
  type                        =  map(object({
    compartment_id            = string
    display_name              = string
    defined_tags              = optional(map(any))
    freeform_tags             = optional(map(any))
  }))
  default     = {}
}

variable "dns_resolvers" {
  description                = "To provision DNS Resolvers"
  type                       = map(object({
    attached_views             = optional(list(object({
      view_id                     = string
    })))
    compartment_id             = string
    defined_tags               = {}
    display_name               = string
    freeform_tags              = {}
    resolver_id                = string
    rules                      = optional(list(object({
      action                     = string
      client_address_conditions  = []
      destination_addresses      = []
      qname_cover_conditions     = []
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
    nsg_ids                    = []
    resolver_id                = string
    scope                      = optional(string)
    subnet_id                  = string
  }))
}