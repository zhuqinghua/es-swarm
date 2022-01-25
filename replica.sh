#!/bin/bash
curl -X PUT "localhost:9200/_settings" -H 'Content-Type: application/json' -d'
{
    "index" : {
        "number_of_replicas" : 2
    }
}'