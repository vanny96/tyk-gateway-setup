ARGOCD_VERSION=5.2.0

helm install argocd argo/argo-cd --version $ARGOCD_VERSION -n argocd --create-namespace
kubectl apply -f root-project/root-project.yaml
kubectl apply -f root-project/infra-app.yaml