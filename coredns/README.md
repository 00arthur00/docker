## coredns
1. open 1053 for dns service
``` bash
./run.sh
```
2. edit /etc/resolv.conf (optional)
```
nameserver 127.0.0.53
## the port 1053 is open by run.sh
nameserver 127.0.0.1:1053
options edns0 
```
3. get ips of service defined in Corefile
``` bash
dig -t A @127.0.0.1 -p 1053 sms.service
# or if step 2 applied
dig -t sms.service
```
4. stop:
``` bash
./stop.sh
```