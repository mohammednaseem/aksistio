# aksistio

## docker login (this is step 1)
docker login tremersso.azurecr.io -u tremersso -p yLxxxzgW5wFxxxBlU9y

### ckad -> namespace commands

#### How many Namespaces exist on the system?
kubectl get namespaces

#### How many pods exist in the 'ckad' namespace?
kubectl get pods -n ckad 

#### Create a POD in the 'ckad' namespace (name = redis; image = redis)
kubectl run --generator=run-pod/v1 --image=redis redis 

#### Get pods from all namespaces
kubectl get pods --all-namespaces

#### What DNS name should an application in 'ckad' namespace use to access the database 'db-service' in the 'dev' namespace
db-service.dev.svc.cluster.local
