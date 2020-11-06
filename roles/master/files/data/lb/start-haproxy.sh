#!/bin/bash
MasterIP1=10.211.55.160
MasterIP2=10.211.55.161
MasterIP3=10.211.55.162
MasterPort=6443

docker run -d --restart=always --name HAProxy-K8S -p 6444:6444 \
        -e MasterIP1=$MasterIP1 \
        -e MasterIP2=$MasterIP2 \
        -e MasterIP3=$MasterIP3 \
        -e MasterPort=$MasterPort \
        -v /data/lb/etc/haproxy.cfg:/usr/local/etc/haproxy/haproxy.cfg \
        wise2c/haproxy-k8s
