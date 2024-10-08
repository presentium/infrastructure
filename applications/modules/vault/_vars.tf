variable "domain" {
  description = "Domain covered by the PKI"
  default     = "presentium.ch"
}

variable "organization" {
  description = "Organization Name"
  default     = "Presentium"
}
variable "country" {
  description = "Country Code"
  default     = "CH"
}

variable "oidc_client_id" {
  description = "OIDC Client ID"
}
variable "oidc_client_secret" {
  description = "OIDC Client Secret"
}