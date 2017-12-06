#!/bin/bash

ES_URL='https://localhost:9200'
curl='curl -s --cacert /etc/elasticsearch/secret/admin-ca --cert /etc/elasticsearch/secret/admin-cert --key /etc/elasticsearch/secret/admin-key'

$curl -X DELETE $ES_URL/$1?pretty
