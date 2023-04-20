#!/bin/bash
#编辑Jupyter配置文件以允许远程访问
pip install jupyter
jupyter notebook --generate-config --allow-root
jupyter notebook password
echo "c.NotebookApp.allow_root = True" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.ip = '0.0.0.0'" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.open_browser = False" >> ~/.jupyter/jupyter_notebook_config.py