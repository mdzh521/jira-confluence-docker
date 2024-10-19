FROM atlassian/jira-software:9.8.2

USER root

# 将代理破解包加入容器
COPY atlassian-agent.jar /var/atlassian/atlassian-agent.jar
COPY mysql-connector-j-8.0.33.jar /opt/atlassian/jira/lib/mysql-connector-j-8.0.33.jar

# 设置启动加载代理包
RUN echo '\nexport CATALINA_OPTS="-javaagent:/opt/atlassian/confluence/atlassian-agent.jar ${CATALINA_OPTS}"' >> /opt/atlassian/confluence/bin/setenv.sh
