#
# Base Loopback (over Node)
#
FROM node:8-stretch

ARG NPM_REG

USER root
# loopback cli tool
RUN npm install -g apiconnect $NPM_REG --unsafe
RUN npm install -g loopback-cli $NPM_REG
RUN npm install -g nodemon $NPM_REG
USER node

WORKDIR /app
