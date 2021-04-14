#!/bin/bash

kubectl get pods | awk '{print $1}' | grep -e "sample-app"

if [[ "$?" == "1" ]]
then
cd /root/Jenkins-K8s-Python/charts
helm install devopsjenkins ./sample-app

elif [[ "$?" == "0" ]]
then
helm delete devopsjenkins
cd /root/Jenkins-K8s-Python/charts
helm install devopsjenkins ./sample-app

fi
