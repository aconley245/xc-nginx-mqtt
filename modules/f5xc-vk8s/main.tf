resource "volterra_virtual_k8s" "vk8s" {
  name      = var.vk8sname
  namespace = var.namespace
}
