# rocm_fastai

This project generates a docker image enables runs a fastAi software stack that can run on a modern AMD graphics card. 
It runs on a rocm implementation of pytorch 1.7.0. This docker image runs a Jupyter Lab that can be used to run the fastAi library. 

Notes: as of 2020-11-21, FastAi requires pytorch 1.7.0, if that changes to something else, then this git repo will need to be updated accordingly. 

This docker image contains:

* Jupyter Lab
* Pytorch
* Fast.ai
* Rocm Utilities
* Python 3.6
* nbdev
* fastbook (FastAi course material libraries)

Initial Setup (This downloads the files, builds the docker container etc)
```bash
sudo docker build --tag rocm .
```

Usage 
```bash
sudo docker run -it -v data:/data -p 1337:1337 --privileged --rm --device=/dev/kfd --device=/dev/dri --group-add video --shm-size 16gb rocm 
```

The ./data folder is exposed to the Docker container and is where the Jupyter lab starts from. 
Anything not in the data folder is lost when you rebuild the container. 


## Requirements
[Modern Linux kernel](https://rocm.github.io/ROCmInstall.html#rocm-support-in-upstream-linux-kernels)

[Hardware](https://rocm.github.io/ROCmInstall.html#hardware-support)
