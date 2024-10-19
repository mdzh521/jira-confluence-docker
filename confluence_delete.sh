#!/bin/bash

# 设置备份目录路径
BACKUP_DIR="/data/project/confluence/backups"

# 查找并删除30天前的备份文件
find "$BACKUP_DIR" -type f -mtime +30 -exec rm -f {} \;

# 输出删除操作的结果
echo "已删除 $BACKUP_DIR 目录中30天前的备份文件。"

