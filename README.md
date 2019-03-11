# config-server

## Build a new Jar
`mvn clean package`

## Docker

to use docker daemon in k8 cluster

`eval "$(minikube docker-env)"`

to undo it:

`eval "$(minikube docker-env -u)"`

To build and run Docker image and container:

`docker build -t noemilosada/config-server:latest .`

`docker run -p 8888:8888 noemilosada/config-server:latest`


## Kubernetes deployment

`kubectl create -f app-deployment.yml`

`kubectl create -f app-service.yml`


