output "security_permissions_id" {
  description = "Map of id values across all security_permissions, keyed the same as var.security_permissions"
  value       = { for k, v in azuredevops_security_permissions.security_permissions : k => v.id }
}
output "security_permissions_namespace_id" {
  description = "Map of namespace_id values across all security_permissions, keyed the same as var.security_permissions"
  value       = { for k, v in azuredevops_security_permissions.security_permissions : k => v.namespace_id }
}
output "security_permissions_permissions" {
  description = "Map of permissions values across all security_permissions, keyed the same as var.security_permissions"
  value       = { for k, v in azuredevops_security_permissions.security_permissions : k => v.permissions }
}
output "security_permissions_principal" {
  description = "Map of principal values across all security_permissions, keyed the same as var.security_permissions"
  value       = { for k, v in azuredevops_security_permissions.security_permissions : k => v.principal }
}
output "security_permissions_replace" {
  description = "Map of replace values across all security_permissions, keyed the same as var.security_permissions"
  value       = { for k, v in azuredevops_security_permissions.security_permissions : k => v.replace }
}
output "security_permissions_token" {
  description = "Map of token values across all security_permissions, keyed the same as var.security_permissions"
  value       = { for k, v in azuredevops_security_permissions.security_permissions : k => v.token }
}

