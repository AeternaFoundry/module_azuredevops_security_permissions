output "security_permissions_id" {
  description = "Map of id values across all security_permissions, keyed the same as var.security_permissions except keys with no id are omitted"
  value       = { for k, v in azuredevops_security_permissions.security_permissions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "security_permissions_namespace_id" {
  description = "Map of namespace_id values across all security_permissions, keyed the same as var.security_permissions except keys with no namespace_id are omitted"
  value       = { for k, v in azuredevops_security_permissions.security_permissions : k => v.namespace_id if v.namespace_id != null && length(v.namespace_id) > 0 }
}
output "security_permissions_permissions" {
  description = "Map of permissions values across all security_permissions, keyed the same as var.security_permissions except keys with no permissions are omitted"
  value       = { for k, v in azuredevops_security_permissions.security_permissions : k => v.permissions if v.permissions != null && length(v.permissions) > 0 }
}
output "security_permissions_principal" {
  description = "Map of principal values across all security_permissions, keyed the same as var.security_permissions except keys with no principal are omitted"
  value       = { for k, v in azuredevops_security_permissions.security_permissions : k => v.principal if v.principal != null && length(v.principal) > 0 }
}
output "security_permissions_replace" {
  description = "Map of replace values across all security_permissions, keyed the same as var.security_permissions except keys with no replace are omitted"
  value       = { for k, v in azuredevops_security_permissions.security_permissions : k => v.replace if v.replace != null }
}
output "security_permissions_token" {
  description = "Map of token values across all security_permissions, keyed the same as var.security_permissions except keys with no token are omitted"
  value       = { for k, v in azuredevops_security_permissions.security_permissions : k => v.token if v.token != null && length(v.token) > 0 }
}

