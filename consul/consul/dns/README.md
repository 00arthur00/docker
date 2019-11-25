## consul dns example
1. run as a docker-compose
``` bash
docker-compose up -d
```
2. load services: a redis service with IP 192.168.10.10 and 192.168.10.11
``` bash
./load.sh
```
3. check dns with dig
``` bash
$ dig -t A @127.0.0.1 -p 8600 redis.service.consul
# ...
redis.service.consul.   0       IN      A       192.168.10.11
redis.service.consul.   0       IN      A       192.168.10.10

$ dig -t A @127.0.0.1 -p 8600 prod.redis.service.consul
# ...
prod.redis.service.consul. 0    IN      A       192.168.10.11


$ dig -t A @127.0.0.1 -p 8600 test.redis.service.consul
# ...
test.redis.service.consul. 0    IN      A       192.168.10.10
```