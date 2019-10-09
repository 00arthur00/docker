# generate template file
helm template --name monitor --namespace monitor . > helmplain.yaml

# download the dependency
helm repo add googleapis https://kubernetes-charts.storage.googleapis.com/
helm dependency build .   

# deploy
kubectl apply -f helmplain.yaml