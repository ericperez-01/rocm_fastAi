FROM rocm/pytorch:rocm3.8_ubuntu18.04_py3.6_pytorch

RUN mkdir /data; cd /data
RUN apt-get update -y

RUN pip install --upgrade pip
RUN pip install --upgrade --upgrade-strategy eager jupyter
RUN pip install --upgrade --upgrade-strategy eager jupyterlab
RUN pip install --upgrade --upgrade-strategy eager fastcache
RUN pip install --upgrade --upgrade-strategy eager nbdev
RUN pip install --upgrade --upgrade-strategy eager ipywidgets
RUN pip install --upgrade --upgrade-strategy eager matplotlib 
RUN pip install --upgrade --upgrade-strategy eager fastprogress 
RUN pip install --upgrade --upgrade-strategy eager pandas 
RUN pip install --upgrade --upgrade-strategy eager pyyaml
RUN pip install --upgrade --upgrade-strategy eager scikit-learn
RUN pip install --upgrade --upgrade-strategy eager spacy
RUN pip install --upgrade --upgrade-strategy eager future
RUN pip install --no-deps torchvision 
RUN pip install --no-deps fastai 
RUN pip install --no-deps fastbook 

EXPOSE 1337

CMD ["jupyter", "lab", "--allow-root","--notebook-dir=/data","--port=1337", "--ip=0.0.0.0"]
