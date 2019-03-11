#!/bin/bash

mvn clean package
docker build -t noemilosada/config-server:latest .

kubectl delete service config-server
kubectl delete deployment config-server

kubectl create -f app-deployment.yml
kubectl create -f app-service.yml