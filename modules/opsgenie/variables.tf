variable "opsgenie_users_list" {
  type = map(object({
    comment = string
    email   = string
    opsgenie = object({
      enabled = bool
      team    = optional(string)
    })
  }))
  description = "List of Opsgenie users"
}