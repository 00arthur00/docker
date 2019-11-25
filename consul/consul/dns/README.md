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

; <<>> DiG 9.11.3-1ubuntu1.11-Ubuntu <<>> -t A @127.0.0.1 -p 8600 redis.service.consul
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 36684
;; flags: qr aa rd; QUERY: 1, ANSWER: 2, AUTHORITY: 0, ADDITIONAL: 1
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
;; QUESTION SECTION:
;redis.service.consul.          IN      A

;; ANSWER SECTION:
redis.service.consul.   0       IN      A       192.168.10.11
redis.service.consul.   0       IN      A       192.168.10.10

;; Query time: 1 msec
;; SERVER: 127.0.0.1#8600(127.0.0.1)
;; WHEN: Mon Nov 25 22:07:29 CST 2019
;; MSG SIZE  rcvd: 81
```