FROM alpine:latest
ARG KINDVERSION=v0.5.1

LABEL Name=kind Version=${KINDVERSION} maintainer="Yapo Yang"

RUN apk update \ 
    && wget https://github.com/kubernetes-sigs/kind/releases/download/${KINDVERSION}/kind-linux-amd64 \
    && chmod +x kind-linux-amd64 \
    && mv kind-linux-amd64 /usr/local/bin/kind \
    && rm -rf /var/cache/apk/*

WORKDIR /kind

ENTRYPOINT ["/usr/local/bin/kind"]