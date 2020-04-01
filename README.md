# jupyterstudio
jupyter studio



## Run

```bash
docker run -it -p 8888:8888 -v /tmp:/opt/notebooks --rm inputx/jupyterstudio
```

Password is `password`.

## Jupyterlab

```bash
    
    2  apt update
    3  /opt/conda/bin/conda install jupyter -y --quiet
    4  mkdir /opt/notebooks
    
```

## PHP Kernel

```bash
    6  apt install php-zmq -y
    
   27  wget https://litipk.github.io/Jupyter-PHP-Installer/dist/jupyter-php-installer.phar
   
   
   30  apt install composer
   31  php ./jupyter-php-installer.phar install
   32  /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root
   
   37  /opt/conda/bin/jupyter-notbook password
   38  /opt/conda/bin/jupyter-notebook password
   39  /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root
   40  cd .jupyter/jupyter_notebook_config.json
   41  cat .jupyter/jupyter_notebook_config.json
   
   47  /opt/conda/bin/conda install -c r rstudio
   48  history

```


## R Kernel

```bash
conda install jupyter r rstudio r-irkernel -y --quiet
conda install -c r rstudio r-irkernel
```
