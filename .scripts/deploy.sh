#!/bin/bash

REMOTE=$1
APP=${2:-"/root/rsshub"}
if [[ $REMOTE = "" ]]; then
echo "缺少服务器地址"
exit -1
fi

# 获取最新的 compose 文件
# wget https://raw.githubusercontent.com/DIYgod/RSSHub/master/docker-compose.yml

echo "RSSHub 部署材料将被保存到 $REMOTE:$APP 下"
ssh -t $REMOTE "mkdir $APP"
rsync . $REMOTE:$APP/
ssh -t $REMOTE < .script/start.sh