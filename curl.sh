#!/bin/bash

# auto login caronte
curl -X POST "http://localhost:3333/setup" \
    -H "Content-Type: application/json" \
    -d '{"accounts":{},"config":{"auth_required":false,"flag_regex":"[A-Z0-9]{31}=","server_address":"10.60.39.1"}}'

# auto login pkappa
curl -X PUT \
    -H "Content-Type: application/x-www-form-urlencoded" \
    -d "cdata:[A-Z0-9]{31}=" \
    "http://localhost:8080/api/tags?name=tag/flag_in&color=%2366ff66"

curl -X PUT \
    -H "Content-Type: application/x-www-form-urlencoded" \
    -d "sdata:[A-Z0-9]{31}=" \
    "http://localhost:8080/api/tags?name=tag/flag_out&color=%23ff6666"
