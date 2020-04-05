# Specify the Istio version that will be leveraged throughout these instructions
$ISTIO_VERSION="1.4.0"

# Enforce TLS 1.2
[Net.ServicePointManager]::SecurityProtocol = "tls12"
$ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -URI "https://github.com/istio/istio/releases/download/$ISTIO_VERSION/istio-$ISTIO_VERSION-win.zip" -OutFile "istio-$ISTIO_VERSION.zip"
Expand-Archive -Path "istio-$ISTIO_VERSION.zip" -DestinationPath .


istioctl manifest apply -f C:\Kube\cloudnative\aksistio\KubeYaml\istio\istio.aks.yaml --logtostderr --set installPackagePath=C:\Kube\cloudnative\aksistio\KubeYaml\istio\istio-1.4.0\install\kubernetes\operator\charts

kubectl create namespace istio-system --save-config

kubectl apply -f C:\Kube\cloudnative\aksistio\KubeYaml\kiali.yaml
kubectl apply -f C:\Kube\cloudnative\aksistio\KubeYaml\grafana.yaml
istioctl dashboard kiali

kubectl create namespace nm
kubectl label namespace nm istio-injection=enabled
kubectl get svc --namespace istio-system --output wide
kubectl get pods --namespace istio-system


istioctl dashboard grafana
istioctl dashboard prometheus
istioctl dashboard jaeger
istioctl dashboard kiali

istioctl dashboard envoy <pod-name>.<namespace>

az acr login -n emerxo

kubectl create secret docker-registry topsecret connection --docker-server emer.azurecr.io --docker-email nas.mod@soup.com --docker-username=em --docker-password oLVsZz0=OAL6lBlU9o

az aks get-credentials --name master -g naseem --admin

az aks create --resource-group nem --name malter --generate-ssh-keys --aad-server-app-id 349356c2-7830-45a9c204d6d59f --aad-server-app-secret Cit89K8Hpoqf3LiBWzsJ/xm]? --aad-client-app-id ce4b1fde-ab35-080726527180 --aad-tenant-id 5d528a6fae-98b2-d70b3d1a65b7 --service-principal 5301fa30-a9ed8007f8b2 --client-secret 2f86801f-9e71-a0c9e08eeb2b
 

