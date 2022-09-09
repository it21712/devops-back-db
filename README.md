
# A Dockerized REST-API Server implemented with Spring together with a MySQL Database

# Installation Guide

## How to install in a Docker environment

### Step 1
Make sure you have *docker* and *docker-compose* installed on your machine

### Step 2
Clone this project

### Step 3
Open a terminal in the project directory and run the following command:
`docker-compose up -d`

### To see the logs:
`docker-compose logs -f`



## How to deploy to a Kubernetes Cluster


### Step 1
Make sure you have *microk8s* installed and running on your local machine

### Step 2
* Cd to the project directory

* Create *MySQL* *PersistentVolumeClaim*, *Deployment* and *ClusterIP* entities:

```
   microk8s kubectl apply -f k8s/db/mysql-pvc.yaml
   microk8s kubectl apply -f k8s/db/mysql-deployment.yaml
   microk8s kubectl apply -f k8s/db/mysql-clip.yaml
   
```
	
* Create *Spring Boot Server* *ConfigMap* *Deployment* and *ClusterIP* entities:

```
   microk8s kubectl apply -f k8s/spring/spring-config.yaml
   microk8s kubectl apply -f k8s/spring/spring-deployment.yaml
   microk8s kubectl apply -f k8s/db/spring-clip.yaml
   
```

### Congratulations!! The server is up and running at: -> http://localhost:8080
