# Initially based on gw000/keras container
# https://hub.docker.com/r/gw000/keras/dockerfile

FROM continuumio/miniconda3:latest
#COPY htc_working_directory.zip /

RUN apt-get update -q \
 && apt-get install --no-install-recommends -y \
    # install essentials
    build-essential \
    g++ \
    git \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

## install other dependencies
RUN conda install -y \
    tifffile \
    h5py \ 
    pytorch \
    numpy \
    scipy \
    matplotlib \
#    tensorflow \
#    tensorflow-gpu \
#    keras \
 && pip install --no-cache-dir htmap \
 && conda clean --all -y

# COPY . /tmp/chtc_segmentation
# RUN pip install --no-cache-dir /tmp/chtc_segmentation \
# && python -c "import shared_segmentation_functions as ssf"

ADD relaynet_inputs_small.tar.gz /tmp/dataset/
ADD relaynet_pytorch-master.tar.gz /tmp/relaynet/

# quick test and dump package lists
# python -c "import tensorflow; print('Tensorflow version', tensorflow.__version__)" \
RUN dpkg-query -l > /dpkg-query-l.txt \
 && pip freeze > /pip-freeze.txt \
 && conda env export -n base > /conda-environment.yml

#WORKDIR /srv/