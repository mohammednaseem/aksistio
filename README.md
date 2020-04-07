# aksistio

## docker login
docker login tremersso.azurecr.io -u emersso -p yLxxxzgW5wFxxxBlU9y

### ckad -> pods
#### create pod
create pod with benefits 11.0.5 in ckad namespace
kubectl run benefits --image=tremersso.azurecr.io -n ckad --generator=run-pod/v1

#### Find image of a pod
kubectl describe pod benefits-bling-blong -n ckad
