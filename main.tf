resource "azuredevops_security_permissions" "security_permissions" {
  for_each = var.security_permissions

  namespace_id = each.value.namespace_id
  permissions  = each.value.permissions
  principal    = each.value.principal
  token        = each.value.token
  replace      = each.value.replace

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

