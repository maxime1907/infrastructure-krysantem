variable "bare_metal_byoi" {
  type = map(object({
    service_name           = string
    url                    = string
    type                   = string
    description            = string
    configdrive = object({
        enable = bool
        user_data = string
    })
  }))
}
