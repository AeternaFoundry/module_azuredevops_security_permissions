variable "security_permissions" {
  description = <<EOT
Map of security_permissions, attributes below
Required:
    - namespace_id
    - permissions
    - principal
    - token
Optional:
    - replace
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    namespace_id = string
    permissions  = map(string)
    principal    = string
    token        = string
    replace      = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.security_permissions : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.namespace_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.security_permissions : (
        length(v.token) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.security_permissions : (
        length(v.principal) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.security_permissions : (
        alltrue([for x in v.permissions : contains(["allow", "deny", "notset"], x)])
      )
    ])
    error_message = "must be one of: \"allow\", \"deny\", \"notset\""
  }
}

