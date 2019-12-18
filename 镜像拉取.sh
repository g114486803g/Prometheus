docker pull registry.cn-shenzhen.aliyuncs.com/jbjb/test:prometheus
docker pull  registry.cn-shenzhen.aliyuncs.com/jbjb/test:node-exporter
docker pull registry.cn-shenzhen.aliyuncs.com/jbjb/test:grafana

docker tag registry.cn-shenzhen.aliyuncs.com/jbjb/test:prometheus  prom/prometheus:latest
docker tag registry.cn-shenzhen.aliyuncs.com/jbjb/test:grafana grafana/grafana:latest
docker tag registry.cn-shenzhen.aliyuncs.com/jbjb/test:node-exporter prom/node-exporter:v0.16.0


docker rmi registry.cn-shenzhen.aliyuncs.com/jbjb/test:prometheus
docker rmi  registry.cn-shenzhen.aliyuncs.com/jbjb/test:node-exporter
docker rmi registry.cn-shenzhen.aliyuncs.com/jbjb/test:grafana
