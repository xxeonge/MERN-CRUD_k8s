#podA가 podB의 서비스를 통해 podB를 검색하려면 PodA를 생성하기 전에 
#podA 서비스를 생성해야 함, 
#따라서, mongodb-pod -> mongodb-service -> mern-server-service -> mern-server-deployment 
#이 순서대로 객체를 생성해야 함.


kubectl apply -f configs.yaml
kubectl create -f mongodb-pod.yaml
kubectl create -f mongodb-service.yaml
kubectl create -f mern-server-service.yaml
kubectl create -f mern-server-deployment.yaml
kubectl create -f mern-client-service.yaml
kubectl create -f mern-client-deployment.yaml
kubectl apply -f ingress.yaml


kubectl apply -f pv.yaml
kubectl apply -f pvc.yaml


kubectl describe pv mongodb-pv







