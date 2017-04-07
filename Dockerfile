FROM node:7.8

RUN npm install --global gulp-cli \
    && mkdir -p /var/mobichord/logs/
