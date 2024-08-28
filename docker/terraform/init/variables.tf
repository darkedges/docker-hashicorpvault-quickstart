variable "hostnames" {
  default = {
    "test" = {
      "tls" : { "namespace" : "dqs", "common_name" : "localhost", "alt_names" : ["localhost", "test", "*.dqs.localhost", "*.dqs.localdev"] }
    }
  }
}

locals {
  helper_list = flatten([for service, value in var.hostnames :
    flatten([for certificate, config in value :
      {
        "service"     = service,
        "certificate" = certificate,
        "config"      = config
      }
    ])
  ])
}
