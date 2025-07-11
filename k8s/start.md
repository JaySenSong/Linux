https://ithelp.ithome.com.tw/m/articles/10202135

***
kubectl run aspnetapp-interactive-delopyment --image aspnetapp:local --port=80 --replicas=3 
從1.19後改成 
kubectl create deployment aspnetapp-interactive-delopyment --image aspnetapp:local --port=80 --replicas=3
***
