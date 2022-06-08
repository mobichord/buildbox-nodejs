FROM node:18-bullseye-slim

ENV LANG C.UTF-8

RUN set -ex \
  && apt-get update && apt-get install -y ca-certificates curl wget jq gnupg dirmngr python3 python3-pip zip git bash lsb-release --no-install-recommends \
  && mkdir -p /etc/apt/keyrings \
  && curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg \
  && curl -fsSL https://get.docker.com -o get-docker.sh \
  && sh get-docker.sh \
  && pip3 install boto3 argparse awscli
