resource "kubernetes_namespace" "rancher" {
  count = var.enable_rancher ? 1 : 0
  metadata {
    name = var.rancher_namesapce
    labels = {
      deploymentSource = "terraform"
    }
  }
}
