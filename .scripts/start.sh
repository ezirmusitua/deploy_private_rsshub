#!/bin/bash

# 初始化 volume
docker volume ls | grep -o "rss"
if [ ! -z $_ ]; then 
docker volume create rss_redis-data
fi

# 更新官方镜像
docker pull diygod/rsshub
# 停止运行中的容器
docker ps -a | grep -o "rsshub"
if [ !-z $_ ]; then
docker-compose down
fi
docker-compose up -d