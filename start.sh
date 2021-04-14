#!/bin/bash

helm delete devopsjenkins

if [[ "$?" == "1" ]]
then
cd /root/Jenkins-K8s-Python/charts
helm install devopsjenkins ./sample-app
else
helm delete devopsjenkins
fi
