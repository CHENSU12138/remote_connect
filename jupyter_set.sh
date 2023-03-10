#!/bin/bash
#编辑Jupyter配置文件以允许远程访问
pip install markupsafe==2.0.1
mkdir -p /root/.jupyter
jupyter notebook --generate-config
echo "c.NotebookApp.ip = '0.0.0.0'" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.open_browser = False" >> ~/.jupyter/jupyter_notebook_config.py