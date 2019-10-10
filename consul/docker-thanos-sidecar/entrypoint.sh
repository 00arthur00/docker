#!/bin/bash
echo ${DEBUGNAME}
exec "/bin/thanos" "$@"