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

```
通过以上步骤是可以完成jira和confluence的启动的。

## 访问
http://localhost:8080
http://localhost:8090

## 图片请参考其他链接

## 破解码获取
### jira
```bash
docker exec -it jira bash
cd /var/atlassian/

java -jar atlassian-agent.jar \
    -d -m test@test.com -n DEV -p jira \
    -o http://localhost:8080/ -s B52W-Y30K-P2FN-SSWK
```

### confluence
```bash
docker exec -it confluence bash
cd /opt/atlassian/confluence/

java -jar atlassian-agent.jar \
  -d -m test@test.com  -n DEV -p conf \
  -o http://localhost:8090/ -s B7N3-9YN1-5XOP-RBQ0
```