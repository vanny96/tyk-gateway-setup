## Description
This is a small pet project to set-up the following:
- ArgoCD as GitOps operator
- Tyk Gateway as API Gateway
- Httpbin as mock application

The key goal is to test as many features of Tyk Gateway as possible

## Run
- Start minikube 
`minikube start`
- Start git daemon
`git daemon --base-path=. --reuseaddr --export-all`

## Setup
- Follow the [run](#run) steps
- Install ArgoCD via helm on your cluster  
`helm install argocd argo/argo-cd --version <VERSION> -n argocd --create-namespace`
- Apply [`root-project.yml`](root-project/root-project.yml) in `argocd` namespace  
`kubectl apply -f root-project/root-project.yaml`
- Apply [`infra-app.yml`](root-project/infra-app.yml) in `argocd` namespace  
`kubectl apply -f root-project/infra-app.yaml`