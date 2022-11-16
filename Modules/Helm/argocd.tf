resource "helm_release" "argo_cd" {
    name = "argocd"
    repository = "https://argoproj.github.io/argo-helm"
    chart = "argo-cd"
    version = "4.9.7"
    namespace = "argocd"
    create_namespace = "true"

    set {
        name = "server.service.type"
        value = "LoadBalancer"
    }

}