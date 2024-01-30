data "ns_connection" "sendgrid" {
  name     = "sendgrid"
  contract = "datastore/aws/sendgrid"
}

locals {
  api_key_secret_name = data.ns_connection.sendgrid.outputs.api_key_secret_name
  domain              = data.ns_connection.sendgrid.outputs.domain
}
