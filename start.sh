#!/bin/bash

helm delete devopsjenkins
sleep 1m
kubectl get pods | awk '{print $1}' | grep -e "sample-app"

if [[ "$?" == "1" ]]
then
cd /root/Jenkins-K8s-Python/charts
helm install devopsjenkins ./sample-app
sleep 1m
ADD=$(kubectl describe pods | grep IP: | awk '{print $2;}' | tail -n 1)
echo "$ADD sample-app.info" >> /etc/hosts
curl -v sample-app.info/

fi
