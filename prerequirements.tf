resource "kubernetes_namespace" "rancher" {
  count = var.enable_rancher ? 1 : 0
  metadata {
    name = var.rancher_namespace
  }
  lifecycle {
    ignore_changes = [metadata[0].annotations, metadata[0].labels]
  }
}
