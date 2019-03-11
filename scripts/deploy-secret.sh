#!/bin/bash

echo Provide keystore file name
read KEY_STORE_NAME

echo Provide desired kubernetes secret-object name
read K8S_SECRETS_NAME

kubectl delete secret ${K8S_SECRETS_NAME} > /dev/null 2>&1
kubectl create secret generic ${K8S_SECRETS_NAME} --from-file=${KEY_STORE_NAME}

