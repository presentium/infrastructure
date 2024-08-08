data "authentik_flow" "default-implicit" {
  slug = "default-provider-authorization-implicit-consent"
}

data "authentik_flow" "default-explicit" {
  slug = "default-provider-authorization-explicit-consent"
}

data "authentik_scope_mapping" "scope-email" {
  scope_name = "email"
  name       = "authentik default OAuth Mapping: OpenID 'email'"
}

data "authentik_scope_mapping" "scope-profile" {
  scope_name = "profile"
  name       = "authentik default OAuth Mapping: OpenID 'profile'"
}

data "authentik_scope_mapping" "scope-openid" {
  scope_name = "roles"
  name       = "authentik default OAuth Mapping: OpenID 'openid'"
}
