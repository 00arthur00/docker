#!/bin/bash
pushd ..
docker stack deploy -c stack.yml es --with-registry-auth
popd