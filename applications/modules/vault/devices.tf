resource "vault_pki_secret_backend_role" "role-devices" {
  backend    = vault_mount.pki_int.path
  issuer_ref = vault_pki_secret_backend_intermediate_set_signed.devices_intermediate.imported_issuers[0]

  name = "devices-${var.domain}"

  allowed_domains             = ["devices.${var.domain}"]
  allow_bare_domains          = false
  allow_subdomains            = true
  allow_wildcard_certificates = false
  allow_localhost             = false
  allow_ip_sans               = false

  key_type = "ec"
  key_bits = 256

  server_flag = false
  client_flag = true

  ou           = ["Devices"]
  organization = [var.organization]
  country      = [var.country]
  max_ttl      = "31536000" #8760h
  ttl          = "2592000"  #720h
}

resource "vault_policy" "devices-policy" {
  name   = "devices-${var.domain}"
  policy = <<EOF
    path "pki-int-ca/issue/devices-${var.domain}" {
      capabilities = [ "update" ]
    }
  EOF
}
