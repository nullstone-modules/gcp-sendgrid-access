output "env" {
  value = [
    {
      name  = "SENDGRID_DOMAIN"
      value = local.domain
    }
  ]
}

output "secrets" {
  value = [
    {
      name  = "SENDGRID_API_KEY"
      value = data.google_secret_manager_secret_version.api_key.secret_data
    }
  ]
}

data "google_secret_manager_secret_version" "api_key" {
  secret = local.api_key_secret_name
}
