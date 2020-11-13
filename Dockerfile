FROM node:15-alpine3.12

RUN apk add docker curl jq python3 py3-pip zip
RUN pip3 install boto3 argparse awscli
