data "ct_config" "baremetal" {
  content      = templatefile("../butane/baremetal.tftpl", {
    ssh_authorized_key = var.SSH_KEY_0
  })
  strict       = true
}

module "network" {
  source = "./../modules/ovh"

  bare_metal_byoi = {
    kimsufi = {
      service_name = var.BAREMETAL_0
      url = "https://stable.release.flatcar-linux.net/amd64-usr/3374.2.5/flatcar_production_openstack_image.img.bz2"
      type = "qcow2"
      description = "Flatcar stable 3374.2.5 amd64"
      configdrive = {
        enable = true
        user_data = data.ct_config.baremetal.rendered
      }
      # disk_group_id = 0
    }
  }
}
