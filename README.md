# OCI - Private DNS Views
Adds private DNS resolvers to an existing VCN. This example uses the default view attached to a VCN and adds the needed rules and endpoints in order to use private DNS.

## Use Cases:
* Hybrid or Multi-Cloud Scenarios where DNS exists on private domains not used in OCI DNS
* Private DNS operated outside the context of OCI DNS

## OCI Provider Coverage:
### Resources
* [DNS Resolver](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/dns_resolver)
* [DNS Resolver Endpoint](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/dns_resolver_endpoint)
* [DNS View](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/dns_view)
### Data Sources
* [Compartments](https://registry.terraform.io/providers/oracle/oci/latest/docs/data-sources/identity_compartments)
* [VCNs](https://registry.terraform.io/providers/oracle/oci/latest/docs/data-sources/core_vcns)
* [Subnets](https://registry.terraform.io/providers/oracle/oci/latest/docs/data-sources/core_subnets)
* [DNS Resolver Association](https://registry.terraform.io/providers/oracle/oci/latest/docs/data-sources/core_vcn_dns_resolver_association)
* [DNS Views](https://registry.terraform.io/providers/oracle/oci/latest/docs/data-sources/dns_views)
* [VCNs](https://registry.terraform.io/providers/oracle/oci/latest/docs/data-sources/core_vcns)
* [Subnets](https://registry.terraform.io/providers/oracle/oci/latest/docs/data-sources/core_subnets)

## Prerequisites:
* Existing Tenancy
* Existing Compartments **which are uniquely named**
* Existing VCNs
* Existing Subnets
* [Policy to allow manage for dns-family](https://docs.oracle.com/en-us/iaas/Content/Identity/Reference/dnspolicyreference.htm)

## Directions:
* Copy the code locally
* Modify the `dns.auto.tfvars.example` file as needed
* Rename the `dns.auto.tfvars.example` to `dns.auto.tfvars`
* `terraform init`
* `terraform plan`
* `terraform apply`