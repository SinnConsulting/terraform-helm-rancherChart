# Terraform Rancher Helm Chart

## How to use

```hcl
module "rancher_helm" {
    source = "git::git@github.com:SinnConsulting/tf-helm-rancher2-chart.git"
    rancher_settings =  {
        "hostname" = "rancher.example.de",
        "ingress.tls.source" = "letsEncrypt",
        "letsEncrypt.email" = "admin@example.de"
        }
}
```
