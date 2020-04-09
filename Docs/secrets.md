# aksistio

## docker login (this is step 1)
docker login tremersso.azurecr.io -u tremersso -p yLxxxzgW5wFxxxBlU9y

### ckad -> Secrets

#### How many Secrets exist on the ckad namespace?
kubectl get secrets -n ckad

#### Create a new Secret named 'db-secret' with the data given below.
#### Secret Name: db-secret  / Secret 1: DB_Host=sql01  /Secret 2: DB_User=root  / Secret 3: DB_Password=password123
kubectl create secret generic db-secret --from-literal=DB_Host=sql01 --from-literal=DB_User=root --from-literal=DB_Password=password123

