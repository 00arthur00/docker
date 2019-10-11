#!/bin/sh
VERSION=v0.5.1
docker build -t 00arthur00/kind:${VERSION} --build-arg KINDVERSION=${VERSION} .