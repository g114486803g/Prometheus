

https://github.com/timonwong/prometheus-webhook-dingtalk
https://hub.docker.com/r/timonwong/prometheus-webhook-dingtalk

1.拉取地址
docker pull timonwong/prometheus-webhook-dingtalk:latest
docker pull prom/alertmanager:latest

2. webhook部署

docker run -d -p 18060:8060 --name webhook timonwong/prometheus-webhook-dingtalk:latest \
--ding.profile="webhook1=https://oapi.dingtalk.com/robot/send?access_token=9e695a464b80833859b02de165a52b107108eef4d0601ce4c94faa29b429118e"


3. alertmanager部署
docker run -d --name alertmanager -p 9093:9093 -v  /etc/localtime:/etc/localtime:ro -v /monit/alertmanager.yml:/etc/alertmanager/alertmanager.yml prom/alertmanager:latest


