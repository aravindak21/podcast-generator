FROM ubuntu:latest

RUN apt-get update && apt-get instal -y \
 python3.10 \
 python3-pip \
 git

RUN pip3 instal PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]