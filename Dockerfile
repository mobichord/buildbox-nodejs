FROM node:8.6

RUN npm install --global gulp-cli mocha mocha-junit-reporter \
    && mkdir -p /var/mobichord/logs/ \
    && apt-get update \
    && apt-get install apt-transport-https software-properties-common ca-certificates curl -y --no-install-recommends \
    && curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - \
    && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian jessie stable" \
    && apt-get update \
    && apt-get install docker-ce -y \
    && pip install boto3 argparse awscli
