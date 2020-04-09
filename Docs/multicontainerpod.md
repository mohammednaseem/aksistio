# aksistio

## docker login (this is step 1)
docker login tremersso.azurecr.io -u tremersso -p yLxxxzgW5wFxxxBlU9y

### ckad -> Multi-container pods

#### Create a multi-container pod with 2 containers.
Name: yellow 
Container 1 Name: lemon
Container 1 Image: busybox
Container 2 Name: gold
Container 2 Image: redis

apiVersion: v1
kind: Pod
metadata:
  name: multipod
spec:
  containers:
  - name: lemon
    image: busybox

  - name: gold
    imageL redis