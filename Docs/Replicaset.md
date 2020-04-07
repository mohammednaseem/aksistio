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

#### What is the state of the container 'benefits-xxxx-xxxxx' in the pod 'benefits'?
kubectl describe pod benefits -n ckad (and look under status column)

#### What does the READY column in the output of the 'kubectl get pods' command indicate?
Running Containers in Pod/Total Containers in Pod

#### Change the image of a running pod
(kubectl set image works only on deployment* I think)
so we will first create a yaml file using below command
kubectl get pod benefits -n ckad -o yaml > .\KubeYaml\testingplace\ben.yaml
then we will kubectl apply command
kubectl apply -f .\KubeYaml\testingplace\ben.yaml

Another option is to run the command "kubectl edit pod benefits -n ckad" and edit the file.. I tested it on windows..












