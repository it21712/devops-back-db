sudo microk8s kubectl apply -f k8s/db/secret.yaml && \
sudo microk8s kubectl apply -f k8s/db/mysql-pvc.yaml && \
sudo microk8s kubectl apply -f k8s/db/mysql-deployment.yaml && \
sudo microk8s kubectl apply -f k8s/db/mysql-clip.yaml && \
sudo microk8s kubectl apply -f k8s/spring/spring-config.yaml && \
sudo microk8s kubectl apply -f k8s/spring/spring-deployment.yaml && \
sudo microk8s kubectl apply -f k8s/spring/spring-clip.yaml && \
sudo microk8s kubectl apply -f k8s/react/react-deployment.yaml && \
sudo microk8s kubectl apply -f k8s/react/react-clip.yaml && \
sudo microk8s kubectl create secret generic tls-secret \
--from-file=tls.crt=certs/certificate.crt \
--from-file=tls.key=certs/private.key \
--from-file=ca.crt=certs/ca_bundle.crt && \
sudo microk8s kubectl apply -f k8s/react/react-ingress.yaml
