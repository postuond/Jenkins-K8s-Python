#!/bin/sh
kubectl delete svc sample-app
kubectl delete deployments sample-app
kubectl delete ingress sample-app-ingress
