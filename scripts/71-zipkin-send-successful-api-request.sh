#!/bin/bash
curl -H "Authorization: Bearer $ACCESS_TOKEN" -k https://localhost:8443/product-composite/2 -w "%{http_code}\n" -o /dev/null -s

echo "Launching Zipkin UI..."
firefox http://localhost:9411/zipkin/
