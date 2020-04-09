# aksistio

## docker login (this is step 1)
docker login tremersso.azurecr.io -u tremersso -p yLxxxzgW5wFxxxBlU9y

#### Create and then remove taint on node01 with key of 'spray', value of 'mortein' and effect of 'NoSchedule'
kubectl taint nodes aks-nodepool1-19300534-vmss000000 tablet=lenadomide:NoSchedule
kubectl taint nodes aks-nodepool1-19300534-vmss000000 tablet=lenadomide:NoSchedule-

#### Create and then remove taint on node01 with key of 'spray', value of 'mortein' and effect of 'NoSchedule'
kubectl taint nodes aks-nodepool1-19300534-vmss000000 tablet=lenadomide:NoExecute
kubectl taint nodes aks-nodepool1-19300534-vmss000000 tablet=lenadomide:NoExecute-

#### Create a Pod with toleration towards the tablet lenadomide
apiVersion: v1
kind: Pod
metadata:
  name: nginx
  labels:
    env: test
spec:
  containers:
  - name: nginx
    image: nginx
    imagePullPolicy: IfNotPresent
  tolerations:
  - key: "tablet"
    operator: "Equal"
    value: "lenadomide"
    effect: "NoSchedule"
 