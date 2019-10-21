#!/bin/sh
#We recommend creating two namespaces, one for the OpenFaaS core services and one for the functions:
kubectl apply -f https://raw.githubusercontent.com/openfaas/faas-netes/master/namespaces.yml

#Generate secrets so that we can enable basic authentication for the gateway:
PASSWORD=$(head -c 12 /dev/urandom | shasum| cut -d' ' -f1)

kubectl -n openfaas create secret generic basic-auth \
	        --from-literal=basic-auth-user=admin \
		--from-literal=basic-auth-password="$PASSWORD"
