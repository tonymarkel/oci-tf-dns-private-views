variable "compartment_id" {
  type    = string
  default = ""
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

variable "tenancy_id" {
  type    = string
  default = ""
}
