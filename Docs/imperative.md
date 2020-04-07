# aksistio

## docker login (this is step 1)
docker login tremersso.azurecr.io -u tremersso -p yLxxxzgW5wFxxxBlU9y

### ckad -> imperative commands

#### Deploy a pod named nginx-pod using the nginx:alpine image.
kubectl run nginx --image=nginx:alpine  -n ckad --generator=run-pod/v1 

#### Start a single instance of hazelcast and let the container expose port 5701 .
kubectl run hazelcast --image=hazelcast --port=5701

#### Start a single instance of hazelcast and set environment variables "DNS_DOMAIN=cluster" and "POD_NAMESPACE=default" in the container.
kubectl run hazelcast --image=hazelcast --env="DNS_DOMAIN=cluster" --env="POD_NAMESPACE=default"

#### Start a single instance of hazelcast and set labels "app=hazelcast" and "env=prod" in the container.
kubectl run hazelcast --image=hazelcast --labels="app=hazelcast,env=prod"

#### Start a replicated instance of nginx.
kubectl run nginx --image=nginx --replicas=5

#### Dry run. Print the corresponding API objects without creating them.
kubectl run nginx --image=nginx --dry-run

#### Start a single instance of nginx, but overload the spec of the deployment with a partial set of values parsed from JSON.
kubectl run nginx --image=nginx --overrides='{ "apiVersion": "v1", "spec": { ... } }'

#### Start a pod of busybox and keep it in the foreground, don't restart it if it exits.
kubectl run -i -t busybox --image=busybox --restart=Never

#### Start the nginx container using the default command, but use custom arguments (arg1 .. argN) for that command.
kubectl run nginx --image=nginx -- <arg1> <arg2> ... <argN>

#### Start the nginx container using a different command and custom arguments.
kubectl run nginx --image=nginx --command -- <cmd> <arg1> ... <argN>

#### Start the perl container to compute π to 2000 places and print it out.
kubectl run pi --image=perl --restart=OnFailure -- perl -Mbignum=bpi -wle 'print bpi(2000)'

#### Start the cron job to compute π to 2000 places and print it out every 5 minutes.
kubectl run pi --schedule="0/5 * * * ?" --image=perl --restart=OnFailure -- perl -Mbignum=bpi -wle 'print bpi(2000)'


#### Create a service redis-service to expose the redis application within the cluster on port 6379.
kubectl run redis --image=redis --generator=run-pod/v1
kubectl expose pod redis --port=6379 --name redis-service

#### Create a deployment named webapp using the image kodekloud/webapp-color with 3 replicas
kubectl create deployment webapp --image=kodekloud/webapp-color 
kubectl scale deployment/webapp --replicas=3

#### Delete Resources
kubectl delete -f ./pod.json         # Delete a pod using the type and name specified in pod.json
kubectl delete pod,service baz foo           # Delete pods and services with same names "baz" and "foo"
kubectl delete pods,services -l name=myLabel     # Delete pods and services with label name=myLabel
kubectl -n my-ns delete pod,svc --all          # Delete all pods and services in namespace my-ns

