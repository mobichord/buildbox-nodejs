FROM node:7.8

RUN npm install --global gulp-cli mocha mocha-junit-reporter \
    && mkdir -p /var/mobichord/logs/
