sudo microk8s kubectl apply -f k8s/db/secret.yaml && \
sudo microk8s kubectl apply -f k8s/db/mysql-pvc.yaml && \
sudo microk8s kubectl apply -f k8s/db/mysql-deployment.yaml && \
sudo microk8s kubectl apply -f k8s/db/mysql-clip.yaml && \
sudo microk8s kubectl apply -f k8s/spring/spring-config.yaml && \
sudo microk8s kubectl apply -f k8s/spring/spring-deployment.yaml && \
sudo microk8s kubectl apply -f k8s/spring/spring-clip.yaml && \
sudo microk8s kubectl apply -f k8s/react/react-deployment.yaml && \
sudo microk8s kubectl apply -f k8s/react/react-clip.yaml
