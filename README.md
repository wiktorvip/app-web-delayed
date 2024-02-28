## app-web-delayed

* name: app-web-delayed
* port: 9000


### Deploy:
```
kubectl apply -f https://raw.githubusercontent.com/wiktorvip/app-web-delayed/main/manifests/Pod-definition.yaml
kubectl apply -f https://raw.githubusercontent.com/wiktorvip/app-web-delayed/main/manifests/Deployment-tcpSocket.yaml
kubectl apply -f https://raw.githubusercontent.com/wiktorvip/app-web-delayed/main/manifests/Deployment-httpGet.yaml

kubectl run -i --tty pod-busybox --rm --image=busybox --restart=Never -- /bin/sh -c 'wget -q -O- http://app-web-delayed:9000/crash'

```
