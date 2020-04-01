FROM continuumio/anaconda3:2020.02

RUN conda install jupyter -y --quiet \
	&& apt install php-zmq composer -y \
	&& wget -P /root https://litipk.github.io/Jupyter-PHP-Installer/dist/jupyter-php-installer.phar \
	&& php /root/jupyter-php-installer.phar install \
	&& rm /root/jupyter-php-installer.phar \
	&& mkdir /opt/notebooks

ADD jupyter_notebook_config.json /root/.jupyter/jupyter_notebook_config.json

ENTRYPOINT ["/opt/conda/bin/jupyter"]
CMD ["notebook", "--notebook-dir=/opt/notebooks", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]


