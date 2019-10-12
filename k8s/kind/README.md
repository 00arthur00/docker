# build image (optional)

it is the work around that china users download github release files slowly. 

go to image folder and modify the kind version, please make sure release exists at https://github.com/kubernetes-sigs/kind/releases

# ENV

run.sh: create kind cluster with kind-example-config.yaml

shell.sh: export kubeconfig and run shell, here is zsh,

helm_init.sh : initial the helm with rbac-config.yaml

destroy.sh: destroy the kind cluster
