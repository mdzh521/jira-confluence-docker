FROM atlassian/confluence-server:7.19.4-jdk11

USER root

# 将代理破解包加入容器
COPY atlassian-agent.jar /opt/atlassian/confluence/
COPY mysql-connector-j-8.0.33.jar /opt/atlassian/confluence/confluence/WEB-INF/lib/

# 设置启动加载代理包
RUN echo '\nexport CATALINA_OPTS="-javaagent:/opt/atlassian/confluence/atlassian-agent.jar ${CATALINA_OPTS}"' >> /opt/atlassian/confluence/bin/setenv.sh
