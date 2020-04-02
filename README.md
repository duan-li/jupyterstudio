# jupyterstudio
jupyter studio


## Upgrade

Source https://github.com/jupyter/docker-stacks

1. Copy different notbooks `Dockerfile` file to `all-jupyter-stacks`. 
2. Check the file update. 
3. Update file `all-jupyter-stacks/Dockerfile.mix`



## Install from 0 on Ubuntu linux
`FROM ubuntu:16.04`

```bash
apt update
apt install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 wget openssl libreadline6 libreadline6-dev libncurses5 libncurses5-dev -y
wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh
bash Anaconda3-2020.02-Linux-x86_64.sh -b -u -p /opt/conda
export PATH="/opt/conda/bin:$PATH"
# jupyter_client
/opt/conda/bin/conda install -c conda-forge jupyterlab readline -y --quiet
/opt/conda/bin/conda install -c r r-irkernel -y --quiet
/opt/conda/bin/conda install -c r r-rzmq -y --quiet
/opt/conda/bin/conda install -c r r-pbdzmq -y --quiet
/opt/conda/bin/conda install -c r r-essentials -y --quiet

jupyter lab --ip='*' --port=8888 --no-browser --allow-root
```

## Install from 0 on Alpine linux

```bash
apk update
apk --update add --no-cache --virtual=build-dependencies ncurses5-libs readline wget ca-certificates bash openssl glibc
wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh
bash Anaconda3-2020.02-Linux-x86_64.sh
rm Anaconda3-2020.02-Linux-x86_64.sh

conda install -c conda-forge jupyterlab
conda install -c anaconda jupyter_client
conda install -c conda-forge readline
conda install -c r r-irkernel
conda install -c r r-essentials
```


## Run

```bash
docker run -it -p 8888:8888 -v /tmp:/opt/notebooks --rm inputx/jupyterstudio
```
/share/NFSHome/dev/Codes/jupyterstudio:/opt/notebooks

Password is `password`.

## Jupyterlab

```bash
    
    2  apt update
    3  /opt/conda/bin/conda install -c conda-forge jupyterlab -y --quiet
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
apt update
apt install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 libncurses-dev libreadline7 libreadline-dev

conda install -c conda-forge jupyterlab
conda install -c anaconda jupyter_client
conda install -c conda-forge readline
conda install -c r r-irkernel
conda install -c r r-essentials
```



```bash
    1  conda install -c conda-forge jupyterlab
    2  jupyter lab --ip='*' --port=8888 --no-browser --allow-root
    3  history
    4  jupyter lab --ip='*' --port=8888 --no-browser --allow-root
    5  apt install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
    6  conda install -c anaconda jupyter_client
    7  R
    8  conda install -c r r-irkernel
    9  history
   10  jupyter lab --ip='*' --port=8888 --no-browser --allow-root
   11  R
   12  conda install -c readline
   13  conda install readline
   14  R
   15  conda install -c r r-essentials
   16  R
   17  cd /lib/x86_64-linux-gnu/
   18  ls
   19  ln libreadline.so.7 libreadline.so.6
   20  R
   21  apt install libncurses
   22  apt install libncurse
   23  apt install libncurses-dev
   24  R
   25  ln libncurses.so.6 libncurses.so.5
   26  R
   27  history
```


conda install -c r r-essentials
conda install -c r r-rserve
conda install -c r r-devtools
conda install -c r r-rcurl
conda install -c r r-RJSONIO
conda install -c r r-jpeg
conda install -c r r-png
conda install -c r r-roxygen2
```bash

mkdir /opt/notebooks
apt update
apt install libreadline7 libreadline-dev -y

conda install jupyter readline r rstudio r-irkernel -y --quiet
conda config --add channels r
conda install -c r r-essentials -y --quiet
conda install -c r r-irkernel -y --quiet



/opt/conda/bin/jupyter notebook --ip='*' --port=8888 --no-browser --allow-root



conda install jupyter r r-essentials r-rserve r-devtools r-rcurl r-RJSONIO r-jpeg r-png r-roxygen2 r-irkernel -y --quiet

conda install jupyter r rstudio r-irkernel -y --quiet
conda install -c r rstudio r-irkernel
```



```
conda config --show-sources
conda config --add channels channel-name

```