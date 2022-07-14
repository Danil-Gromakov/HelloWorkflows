FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

# ARG GIT_ACCESS_TOKE=''
ARG ZIP_ACCESS_TOKE=''

# ENV git_access_token $GIT_ACCESS_TOKE
ENV zip_access_token $ZIP_ACCESS_TOKE

# Ключи для yandex cloud
# COPY ./.aws /root/.aws

COPY . . 

# 1. Установить основные пакеты 
RUN apt-get update && apt-get install -y sudo git ffmpeg vim curl openvpn unzip wget iputils-ping && \
	apt-get install -y software-properties-common && \
	add-apt-repository ppa:deadsnakes/ppa && \
	apt-get install -y python3 python3-pip
	
# 2. Скачать репозитории
# git clone https://{token}@github.com/LCC-Ohm/{repo_name}.git
# RUN git clone https://$git_access_token@github.com/LCC-Ohm/fs_utils.git && \     
# 	git clone https://$git_access_token@github.com/LCC-Ohm/StreamRecording.git && \
# 	git clone https://$git_access_token@github.com/LCC-Ohm/vpn.git

# 3. Установить репозитории
# RUN cd /fs_utils && pip3 install -r requirements.txt && python3 setup.py install && \
# 	cd /StreamRecording && pip3 install -r requirements.txt && chmod +x /StreamRecording/record.sh && \
# 	cd /vpn && unzip -P $zip_access_token 5g.zip && ls -l


RUN pip3 install psutil tabulate

# Очистить переменные
# ENV git_access_token=
# ENV zip_access_token=
# WORKDIR /StreamRecording

RUN echo "Deploy Dockerfile =)"
RUN echo "$zip_access_token is secret outside"


CMD [ "/bin/bash" ]


