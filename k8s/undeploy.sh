kubectl delete deploy/mern-server-deployment
kubectl delete service/backend
kubectl delete pod/mongodb
kubectl delete service/mongodb-service
kubectl delete deploy/mern-client-deployment
kubectl delete service/mern-client-service
kubectl delete -f configs.yaml
kubectl delete -f ingress.yaml


kubectl delete -f pvc.yaml
kubectl delete -f pv.yaml


kubectl get pods
kubectl get svc