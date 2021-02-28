# Terraform Rancher Helm Chart

## Pipelines
![Create Release](https://github.com/SinnConsulting/tf-helm-rancher2-chart/workflows/Create%20Release/badge.svg)

## How to use

### Terraform Registry

#### Let's Encrypt
```hcl
module "rancherChart" {
  source  = "SinnConsulting/rancherChart/helm"

  rancher_settings =  {
      "hostname" = "rancher.example.de",
      "ingress.tls.source" = "letsEncrypt",
      "letsEncrypt.email" = "admin@example.de"
      }
}
```

#### Private Certificate

```hcl
module "rancher_helm" {
    source = "git::git@github.com:SinnConsulting/terraform-helm-rancherChart.git"
    rancher_settings =  {
        "hostname" = "rancher.example.de",
        "ingress.tls.source" = "secret",
        }
}
```
[For more information](https://rancher.com/docs/rancher/v2.x/en/installation/resources/advanced/helm2/helm-rancher/tls-secrets/)


#### Private certificate signed by private CA

```hcl
module "rancher_helm" {
    source = "git::git@github.com:SinnConsulting/terraform-helm-rancherChart.git"
    rancher_settings =  {
        "hostname" = "rancher.example.de",
        "ingress.tls.source" = "secret",
        "privateCA" = "true"
        }
}
```
[For more information](https://rancher.com/docs/rancher/v2.x/en/installation/resources/advanced/helm2/helm-rancher/tls-secrets/#using-a-private-ca-signed-certificate)


### Git Repo

```
module "rancher_helm" {
    source = "git::git@github.com:SinnConsulting/terraform-helm-rancherChart.git"
    rancher_settings =  {
        ...
        }
}
```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| helm | >= 2.0.2 |
| kubernetes | >= 2.0.2 |

## Providers

| Name | Version |
|------|---------|
| helm | >= 2.0.2 |
| kubernetes | >= 2.0.2 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| enable\_rancher | n/a | `bool` | `true` | no |
| rancher\_namespace | n/a | `string` | `"cattle-system"` | no |
| rancher\_release\_branch | n/a | `string` | `"stable"` | no |
| rancher\_release\_version | n/a | `string` | `"2.4.13"` | no |
| rancher\_settings | n/a | `map(string)` | `{}` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
