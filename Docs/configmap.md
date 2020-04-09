# aksistio

## docker login (this is step 1)
docker login tremersso.azurecr.io -u tremersso -p yLxxxzgW5wFxxxBlU9y

### ckad -> ConfigMap
kubectl create configmap game-config --from-file=..\KubeYaml\PractiseYamls\configmapgameproperties.properties

#### Creating from literal values
kubectl create configmap special-config-map-namer --from-literal=special.how=very --from-literal=special.type=charm

#### Create a new configmap named my-config based on folder bar
kubectl create configmap my-config --from-file=path/to/bar

#### Create a new configmap named my-config with specified keys instead of file basenames on disk
kubectl create configmap my-config --from-file=key1=/path/to/bar/file1.txt --from-file=key2=/path/to/bar/file2.txt

#### Create a new configmap named my-config with key1=config1 and key2=config2
kubectl create configmap my-config --from-literal=key1=config1 --from-literal=key2=config2

#### Create a new configmap named my-config from the key=value pairs in the file
kubectl create configmap my-config --from-file=path/to/bar

#### Create a new configmap named my-config from an env file
kubectl create configmap my-config --from-env-file=path/to/bar.env

#### Get configmap 
kubectl get configmaps special-config-map-namer -o yaml

#### Reading configs from pods
check the file /PractiseYamls/configmapgame.properties