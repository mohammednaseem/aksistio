### important the top command takes time.. gathering metrics takes time.. once the metric servers starts up.. wait couple of mins

#### kubectl top node
D:\kube\aksistio\aksistio\KubeYaml>kubectl top node
NAME                                CPU(cores)   CPU%   MEMORY(bytes)   MEMORY%
aks-nodepool1-19300534-vmss000000   441m         23%    1996Mi          43%
aks-nodepool1-19300534-vmss000001   341m         17%    1396Mi          30%

#### Identify the node that consumes the most CPU.
#### Identify the node that consumes the most Memory.

#### kubectl top pod