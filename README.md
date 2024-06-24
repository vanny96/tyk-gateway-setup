## Description

## Setup
- Install ArgoCD via helm on your cluster  
`helm install argocd argo/argo-cd --version <VERSION> -n argocd --create-namespace`
- Apply [`root-project.yml`](root-project/root-project.yml) in `argocd` namespace  
`kubectl apply -f root-project/root-project.yaml`
- Apply [`infra-app.yml`](root-project/infra-app.yml) in `argocd` namespace  
`kubectl apply -f root-project/infra-app.yaml`