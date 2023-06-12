# Infrastructure krysantem

This repository contains Infrastructure as Code (IaC) content that uses Terraform for cloud provisioning and Kubespray for cluster provisioning.

Terraform is a popular open-source tool for building, changing, and versioning infrastructure safely and efficiently. It allows users to define their infrastructure as code using a declarative language and then apply that code to provision and manage cloud resources such as virtual machines, storage accounts, and networking resources.

Kubespray, on the other hand, is an open-source tool for provisioning and managing Kubernetes clusters. It automates the deployment of a secure, highly available Kubernetes cluster on any cloud infrastructure or bare metal servers.

Together, these tools can be used to provision and manage the infrastructure and Kubernetes clusters needed for running applications and services in the cloud. The repository contains code that defines the infrastructure and Kubernetes clusters, including the configuration of the cloud resources and Kubernetes components such as pods, services, and deployments.

By using Infrastructure as Code, developers and operations teams can automate the process of provisioning and managing infrastructure and clusters, making it easier to scale applications and services while reducing the risk of human error. The code in this repository can be modified and extended to meet the specific needs of different applications and environments.

## Terraform

OVH bring your own image is not yet merged into their ovh module so doing this part manually for now

### Installation

```bash
sudo curl -L https://github.com/coreos/butane/releases/download/v0.18.0/butane-x86_64-unknown-linux-gnu -o /usr/local/bin/butane && sudo chmod +x /usr/local/bin/butane
butane butane/baremetal.tftpl
curl -L https://stable.release.flatcar-linux.net/amd64-usr/3510.2.2/flatcar_production_openstack_image.img.bz2 -o flatcar_production_openstack_image.img.bz2
bzip2 -d flatcar_production_openstack_image.img.bz2
md5sum flatcar_production_openstack_image.img
```

Upload flatcar image to [plik](https://plik.vulpecula.fr)

Retrieve flatcar url

Go to OVH panel on install custom image and paste all the infos
