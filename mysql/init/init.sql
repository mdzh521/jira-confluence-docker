-- 设置全局事务隔离级别
SET GLOBAL TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- 创建 confluence 数据库，只有在不存在时才执行
CREATE DATABASE IF NOT EXISTS confluence CHARACTER SET utf8 COLLATE utf8_bin;

-- 创建 jiradb 数据库，只有在不存在时才执行
CREATE DATABASE IF NOT EXISTS jira CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;

create user 'jira'@'%' identified by 'QweR!2#4!';

GRANT ALL PRIVILEGES ON jira.* TO 'jira'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON confluence.* TO 'confluence'@'%' WITH GRANT OPTION;
flush privileges;
