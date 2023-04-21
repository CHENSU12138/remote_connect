#!/bin/bash

# 安装 Git 和 Vim
apt update -y
apt install -y git vim openssh-server 

# 允许 SSH 远程连接
echo "root:1234" | chpasswd
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
service ssh restart
#编辑Jupyter配置文件以允许远程访问
pip install jupyter
jupyter notebook --generate-config --allow-root
jupyter notebook password
echo "c.NotebookApp.allow_root = True" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.ip = '0.0.0.0'" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.open_browser = False" >> ~/.jupyter/jupyter_notebook_config.py