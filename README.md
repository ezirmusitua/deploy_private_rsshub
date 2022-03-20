# 私有化部署 RSSHub

[说明文章](https://ezirmusitua.site/deploy_private_rsshub)

```bash
cd /path/to/repo
# 不指定在服务器上的位置（默认位置为 /root/rsshub)
bash .scripts/deploy.sh root@server
# 制定在服务器上的位置
bash .scripts/deploy.sh root@server path/to/rsshub
```