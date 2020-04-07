# aksistio

## docker login (this is step 1)
docker login tremersso.azurecr.io -u tremersso -p yLxxxzgW5wFxxxBlU9y

### ckad -> pods
#### create pod
create pod with benefits 11.0.5 in ckad namespace
kubectl run benefits --image=tremersso.azurecr.io/benefits:11.0.5 -n ckad --generator=run-pod/v1

#### Find image of a pod
kubectl describe pod benefits -n ckad

#### Find the pods & corresponding host nodes
kubectl get pods -n ckad -o wide 
OR finding for individual pod (benefits) only 
kubectl describe pod benefits -n ckad

#### How many containers (and their corresponding images) are part of the pod 'benefits-xxxx-xxxx' in -n nm namespace?
kubectl describe pod benefits -n nm 
Under containers section you will see pods a) benefits-api-service & 2) istio-proxy 
Pod Images for benefits-xxxx-xxxxx (tremersso.azurecr.io/benefits:11.0.5)
Pod Images for istio-proxy (docker.io/istio/proxyv2:1.4.0)

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












