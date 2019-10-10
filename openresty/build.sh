#!/bin/bash
docker build -t 00arthur00/openresty .
docker tag 00arthur00/openresty:latest 00arthur00/openresty:v0.0.1