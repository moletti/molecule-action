FROM python:3.9.6-buster

LABEL maintainer="Leo Moletti"

ENV ANSIBLE_FORCE_COLOR=1

RUN apt-get update && \
    apt-get install  -y -q --no-install-recommends docker.io rsync openssh-client git && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN pip3 install -r requirements.txt

CMD molecule ${COMMAND:-test} --scenario-name ${SCENARIO:-default}