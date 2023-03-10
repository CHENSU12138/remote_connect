## 建立docker容器
- docker run -dit --gpus all --name chen_lseg -p -6600:6006 -p 8200:22 -p 8800:8888 -v ~/ws4/lseg:/workspace/lseg 7554ac65eba5
- 解释 docker run -dit --gpus （绑定gpu） --name （容器名字） -p （开放端口，tensorboard，jupyter，ssh） -v （磁盘映像） 指定image

## 进入容器
- docker exec -it  (容器id)   /bin/bash

## 安装工具
- apt -y update
- apt install -y wget
- wget -O install_tool.sh "https://www.dropbox.com/s/2obv1nz8zo8wzkt/install_tool.sh?dl=1"
- wget -O install_tool.sh "https://www.dropbox.com/s/144e53brrfq7ja6/jupyter_set.sh?dl=1" (jupyter,有问题)
## tensorboard 使用
- tensorboard --logdir . --host=0.0.0.0 
-  --bind_all 打开所有接口 --logdir 指定文件
- 本地浏览器打开10.40.1.122:-p

## jupyter使用
- 如果sh成功 jupyter --allow-root
- 未成功 jupyter --ip 0.0.0.0  --allow-root
- 将生成的toker输入
- 本地浏览器打开10.40.1.122:-p

## pycharm 连接
- 先创建sftp
- 建立ssh连接 端口来自-p，root，密码登录
- 上传文件
