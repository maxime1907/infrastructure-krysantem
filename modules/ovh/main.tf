resource "ovh_dedicated_server_byoi" "byio" {
  for_each      = var.bare_metal_byoi
  service_name  = var.bare_metal_byoi[each.key].service_name
  url           = var.bare_metal_byoi[each.key].service_name
  type          = var.bare_metal_byoi[each.key].service_name
}
