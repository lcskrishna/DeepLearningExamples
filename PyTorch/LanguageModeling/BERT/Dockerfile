ARG FROM_IMAGE_NAME=rocm/pytorch:rocm3.3_ubuntu16.04_py3.6_pytorch
FROM ${FROM_IMAGE_NAME}
RUN apt-get update && apt-get install -y pbzip2 pv bzip2 cabextract

ENV BERT_PREP_WORKING_DIR /workspace/bert/data

WORKDIR /workspace
RUN git clone https://github.com/attardi/wikiextractor.git
RUN git clone https://github.com/soskek/bookcorpus.git

WORKDIR /workspace/bert
RUN pip3.6 install --no-cache-dir \
 tqdm boto3 requests six ipdb h5py html2text nltk progressbar onnxruntime\
 git+https://github.com/NVIDIA/dllogger

RUN apt-get install -y iputils-ping

COPY . .
