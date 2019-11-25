#!/bin/sh
curl \
    --request PUT \
    --data @payload1.json \
    http://127.0.0.1:8500/v1/catalog/register
curl \
    --request PUT \
    --data @payload2.json \
    http://127.0.0.1:8500/v1/catalog/register
