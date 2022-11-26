#!/bin/sh

# point to Consul
export CONSUL_HTTP_ADDR="${INPUT_URL}"

# gets Consul KV value
value=$(consul kv get "${INPUT_KEY}")

# sets environment variable in GitHub Action
echo "${INPUT_KEY}<<EOF" >> $GITHUB_ENV
echo "${value}" >> $GITHUB_ENV
echo "EOF" >> $GITHUB_ENV
