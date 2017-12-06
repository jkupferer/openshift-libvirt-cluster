#!/bin/bash

ES_URL='https://localhost:9200'
curl='curl -s --cacert /etc/elasticsearch/secret/admin-ca --cert /etc/elasticsearch/secret/admin-cert --key /etc/elasticsearch/secret/admin-key'

date
$curl -X GET $ES_URL/_cluster/health?pretty

echo
$curl -X GET $ES_URL/_cat/shards?h=index,shard,prirep,node,state,unassigned.reason
