# OCI - Private DNS Views
Terraform Code to integrate with an existing repository. This example uses the default view attached to a VCN and adds the needed rules and endpoints in order to use private dns.

## Concepts Covered:
### Resources
* [DNS Resolver](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/dns_resolver)
* [DNS Resolver Endpoint](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/dns_resolver_endpoint)
### Data Sources
* [Compartments](https://registry.terraform.io/providers/oracle/oci/latest/docs/data-sources/identity_compartments)
* [DNS Views](https://registry.terraform.io/providers/oracle/oci/latest/docs/data-sources/dns_views)
* [VCNs](https://registry.terraform.io/providers/oracle/oci/latest/docs/data-sources/core_vcns)
* [Subnets](https://registry.terraform.io/providers/oracle/oci/latest/docs/data-sources/core_subnets)

## Prerequisites:
* Existing Tenancy
* Existing Compartments
* Existing VCN
* Policy to allow manmage for dns-family

## Directions:
* Copy the code locally
* Move the dns modules into the correct place in your repo
* Copy the variables into your variables.tf
* Copy the dns.tf to the root of your terraform repo