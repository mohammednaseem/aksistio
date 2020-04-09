# aksistio

## docker login (this is step 1)
docker login tremersso.azurecr.io -u tremersso -p yLxxxzgW5wFxxxBlU9y

### ckad -> node affinity

#### How many Labels exist on node node01?
kubectl describe node node01
now look at the labels

#### What is the value set to the label cp.k8.io/imaa on aks-nodepool1-19300534-vmss000000?
kubectl describe node aks-nodepool1-19300534-vmss000000' 
now look at the labels

#### Apply a label team=mc to node node01
kubectl label node aks-nodepool1-19300534-vmss000000 team=mc

#### Create a new deployment named 'datadoor' with the redis image and 3 replicas
kubectl create deployment datadoor --image=redis --replicas=3

#### Which nodes are 'x' & 'y' PODs placed on?
kubectl get pods -o wide
now look at the node column

#### Set Node Affinity to the deployment to place the PODs on node01 only
apiVersion: apps/v1
kind: Deployment
metadata: 
  name: redisdep
spec:
  replicas: 3
  selector: 
    matchLabels:
      run: redis
  template:
    metadata:
      labels: 
        run: redis
    spec: 
      containers:
      - image: redis
        name: redis
      affinity:
        nodeAffinity:
          requiredDuringSchedulingIgnoredDuringExecution:
            nodeSelectorTerms:
            - matchExpressions:
              - key: team
                operator: Equals
                values: 
                - mc

#### Create a new deployment named 'red' with the NGINX image and 3 replicas, and ensure it gets placed on the master node only. #### Use the label - kubernetes.io/hostname=master - set on the master node.
apiVersion: apps/v1
kind: Deployment
metadata: 
  name: redisdep
spec:
  replicas: 3
  selector: 
    matchLabels:
      run: redis
  template:
    metadata:
      labels: 
        run: redis
    spec: 
      containers:
      - image: redis
        name: redis
      affinity:
        nodeAffinity:
          requiredDuringSchedulingIgnoredDuringExecution:
            nodeSelectorTerms:
            - matchExpressions:
              - key: kubernetes.io/hostname
                operator: Equals
                values:
                - master                 