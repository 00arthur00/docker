#!/bin/bash
## master1,data1,data4
docker node update --label-add umb.es.master1=true umbstorage01-prod-py2-b28
docker node update --label-add umb.es.data1=true   umbstorage01-prod-py2-b28
docker node update --label-add umb.es.data4=true   umbstorage01-prod-py2-b28

## master2,data2,data5
docker node update --label-add umb.es.master2=true umbstorage02-prod-py2-b28
docker node update --label-add umb.es.data2=true   umbstorage02-prod-py2-b28
docker node update --label-add umb.es.data5=true   umbstorage02-prod-py2-b28

## master3,data3,data6
docker node update --label-add umb.es.master3=true umbstorage03-prod-py2-b28
docker node update --label-add umb.es.data3=true   umbstorage03-prod-py2-b28
docker node update --label-add umb.es.data6=true   umbstorage03-prod-py2-b28