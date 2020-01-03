## ENV
### 版本
es:     7.5.1

kibana: 7.5.1

linux: centos7 

kernel: 5.4.6-1.el7.elrepo.x86_64

docker: 19.03.5

docker driver: overlay2

### 机器
三台机器

### 机器配置
``` bash
sudo sed -i '$ a vm\.max_map_count=262144' /etc/sysctl.conf
sudo sysctl -p
sudo sed -i '/ExecStart=\/usr\/bin\/dockerd/ s/$/ --default-ulimit memlock=-1/' /usr/lib/systemd/system/docker.service
sudo systemctl daemon-reload
sudo systemctl restart docker
```

config:
```
# docker
net.bridge.bridge-nf-call-ip6tables = 1
net.ipv4.ip_forward = 1
net.bridge.bridge-nf-call-iptables = 1

net.ipv4.ip_forward=1
```

### 资源分布
10.212.18.14 master1 data1
10.212.18.15 master2 data2
10.212.18.17 master3 data3

coordinator两个实例,可能分配之任何节点之上,实例数为2

所有数据均在各个几点的volume上,dockerroot位置/data1/dockerroot
### 部署机器
10.212.18.14

/data/work/umb/deployments/

## 部署

1. 更新节点标签
``` bash
./node_labels.sh
```

2. 部署
```
./run.sh
```

3. 停止
```
./stop.sh
```

## 参数调优