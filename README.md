# docker + jira + confluence

## 启动环境
需要提前准备好，docker + docker-compose

## 准备镜像

```bash
cd confluence-dockerfile
docker build -t confluence-server:7.19.4-jdk11-2.0 .

# 回到项目根目录
cd ..
docker-compose up -d

