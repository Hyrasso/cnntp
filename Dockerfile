FROM nvidia/cuda:10.1-base-ubuntu18.04

RUN apt update && apt install -y python3.6 python3-pip libsm6 libxext6 libxrender-dev libglib2.0-dev
ADD requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

WORKDIR /src
CMD [ "python3", "hello.py"]