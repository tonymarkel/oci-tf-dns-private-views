// Copyright (c) 2021, 2022, Oracle and/or its affiliates.

############################
# Provider Block!
# OCI!
############################

provider "oci" {
  user_ocid = "ocid1.user.oc1..aaaaaaaa5yrwyfbzvjzcfn5z4tbwyx7hqiowj25ezuy5lqwfywm52vmzvwsq" 
  private_key_path = "/home/tonymarkel/.oci/tonymarkel.key"
  private_key="-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCqYvxNz8V1+xLJ\nTIEBtWDvnUwFALKUvpa3ov6j9jZ003T1tnbhFRLi9YYkUHnM4NomgA6Ae/3Ep+I3\nFkBReBiclotmE0X86wBYerjcBVkihweOuq+UxPWx346l6FGHsNeYKz8FfgNPDQ3L\novsoDC+ERVNKQRljnrERAKBGnTrSXzgcn48JbmwTWlcTA8pR+LDfh7PSC5N52ijF\n6BhluNcsB6qVA7B4H+Dv2KWMVFiKhc7bRO0HPMlmN5+Vj5O1EusQqnyXSvxM9Ewm\nwA29KlDFKaZPeOk58AITEwKbkteb55qbYARdvUZMZJldwik9MicGOLT6sKfkGnXV\nO1aOyIQhAgMBAAECggEAQORyMzBuhACbpw78EyqBQMEnssARQ5VS0Z3CXa/oDZZ7\ndRmJLTBZgRcBf9MmkGEStJcQ7t5KSBuojFJtLJoQxZKQhM/SWAEooIoc3a8rw3qp\n5jIzrPVWnegG7CkO5B71/X57Ahx8Jh9Sobvw68+4SSgeEKm6gbZuuYsDf+FiBbye\n0I6cZgzvPsdxI/C+r/2yo9G1kmc+Nmfec++eRcDeykE3fYA2MBNZ9MLTPGiwhvLR\nQlMsgWvg0ZSVyv5xQkJjHm+T8G+21c0ERPvChDYELScPukE1IG3o8jZNX0d0cLcW\nrPYw1j9y9tVbTQZ9oOdYF4rzn20ojUHBh1SYOkHeAQKBgQDcd4AlaGevG3MBAYix\n41lY0hFRzxgOkpifZT2ATBFNfgknUPqR7MpMiNRTUZJxf8NnoWhXXIGxDbQjGPi7\neF86EyVB4FG7adUEruobPUbJkB5bWJ1RoKqUg1Z8R/n0zCrZOPqu+HWbfkq35oTc\nEpJ3H1Vg272de7K/tAuDuJJ1mwKBgQDF2StsXvYcBxi7Xe7sxfZKlKNqLKp8uOqt\nMeq8T9EsWvVOHBRnkSTnBuLDI9MqKeeSAQlliakFVf8k3De0IJpdSiDwNkeesoIh\nNjHEjRf0d43zUezUTMSs51/5oicf8ByD9+znpcTydBZppX99Vjlb5I8xjYvnBNpu\nfNt6ubfG8wKBgDY23LhWOEkDQwCYU/kKo0oIPmITvyK2QfnQd5M5IXgg6jdU3olL\n5WN0smHayVxHwtGVC4eQJARaDlYjKedP7nrlgl/0vaSMnemM6dzQ8LtYSV7FJ8qO\n6+OheH8PZBQisNbCAENOrf0SzWTztvA3UPUiK2iqILK9XHNv3vUBSmLJAoGAI3++\n4df8ErVXQ68sAoHWmjUnSRKwmGZZfS/6rUUpA+tiHly9cIPDekxq/ZZ8+hDAwxq6\ng+R6VkHC4Os+d2xuJhT56f/jQ99FqA3gSiMCzFNzPdhSRRltJJTzTIhCuuFLTIZ8\nlGfS+anIp7YRNPz2l71f0AVUt+PQCYkPnGqcRe8CgYEAgdZRXdGMewEdlh0IcbMV\nhx9uLXwesrX4mGcmSQPvTMczqpPjkc7RtCLGObXpILD79v4D9CqybdviF+yb2+/l\ne7c6iJcYM3PN81FA6HQSoJeBH8MX2kn9qkHHT7lgyxcuZm+H1D/l4z4KwB1a8sKD\nOu2sQwzsxC6WytgTNA9UNNI=\n-----END PRIVATE KEY-----"
  fingerprint = "b8:a0:75:36:21:a2:07:a1:2c:a5:34:71:23:60:81:64"
  region = "us-ashburn-1"
  #tenancy_ocid     = var.tenancy_ocid
  #user_ocid        = var.user_ocid
  #fingerprint      = var.fingerprint
  #private_key      = var.private_key
  #region           = var.region
  ignore_defined_tags = ["Oracle-Tags.CreatedBy", "Oracle-Tags.CreatedOn"]
}

terraform {
  required_providers {
    oci = {
      source  = "hashicorp/oci"
      version = ">= 5.0.0"
    }
  }
  backend "local" {
      path = "./terraform.tfstate"
  }
}
