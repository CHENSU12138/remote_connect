#!/bin/bash

# 安装 Git 和 Vim
apt update -y
apt install -y git vim openssh-server 

# 允许 SSH 远程连接
echo "root:1234" | chpasswd
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
service ssh restart

