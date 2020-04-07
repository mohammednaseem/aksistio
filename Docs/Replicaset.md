# aksistio

## docker login (this is step 1)
docker login tremersso.azurecr.io -u tremersso -p yLxxxzgW5wFxxxBlU9y

### ckad -> replicasets
#### How many ReplicaSets exist on the nm namespace?
kubectl get replicaset -n nm
Run above command and count the number of replicasets.

#### How many PODs are DESIRED in the new-replica-set?
kubectl get replicaset -n nm
now look at the count under the 'Desired' column

#### What is the image used to create the pods in the benefits-api-8b4bcc568?
kubectl describe replicaset benefits-api-8b4bcc568 -n nm
Under "Pod Template" -> Containers -> Image

#### How many PODs are DESIRED/CURRENT/READY in the replicaset (benefits-api-8b4bcc568) in -n nm namespace?
kubectl get rs -n nm 
Now look under Ready column

#### Fix the replicaset defintion in the file /PractiseYamls/rs-1.yaml

#### Scale the replicaset to 3 pods
kubectl scale --replicas=3 rs/benefits-api-8b4bcc568  -n nm

kubectl scale --replicas=3 rs/foo                                 # Scale a replicaset named 'foo' to 3
kubectl scale --replicas=3 -f foo.yaml                            # Scale a resource specified in "foo.yaml" to 3
kubectl scale --current-replicas=2 --replicas=3 deployment/mysql  # If the deployment named mysql's current size is 2, scale mysql to 3
kubectl scale --replicas=5 rc/foo rc/bar rc/baz                   # Scale multiple replication controllers

