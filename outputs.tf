output "kubectl_output" {
  value = "Update you kubectl config by running, aws eks update-kubeconfig --name ${module.eks.cluster_name}"
}
