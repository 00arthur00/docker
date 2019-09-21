## 启动 Nexus 容器
```bash
docker run -d --name nexus3 --restart=always \
    -p 8081:8081 \
    -p 5001:5001 \
    --mount src=nexus-data,target=/nexus-data \
    sonatype/nexus3
```