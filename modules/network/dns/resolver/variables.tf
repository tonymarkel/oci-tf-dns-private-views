variable "compartment_id" {
  type    = string
  default = null
}

variable "vcn_id" {
  type = string
  default = null
}

variable "defined_tags" {
  type = map(any)
  default = { "Oracle-Tags.CreatedOn" = "$${oci.datetime}",
    "Oracle-Tags.CreatedBy" = "$${iam.principal.name}"
  }
}

variable "display_name" {
  type    = string
  default = null
}

variable "freeform_tags" {
  type    = map(any)
  default = {}
}

variable "scope" {
  type    = string
  default = null
}

variable "resolver_id" {
  type    = string
  default = null
}

variable "key_name" {
  type    = string
  default = null
}

variable "view_id" {
  type    = string
  default = null
}

variable "rules" {}

variable "tenancy_id" {
  type    = string
  default = null
}

variable "dns_resolver" {
  type        = map(any)
  default     = {}
}
