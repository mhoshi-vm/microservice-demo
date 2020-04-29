#!/bin/bash


if [ $# -ne 1 ]; then
  echo "引数に enable もしくは disable を指定してください"
  exit 1
fi

if [ $1 = "enable" ]; then

  echo "Enabling Review VirtualService with random faults..."
  kubectl apply -f ../../k8s-config/resilience-tests/review-virtual-service-with-faults.yaml
fi

if [ $1 = "disable" ]; then

  echo "Disabling Review VirtualService with random faults..."
  kubectl delete -f ../../k8s-config/resilience-tests/review-virtual-service-with-faults.yaml
fi

