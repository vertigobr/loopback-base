#
# Base Loopback (over Node)
#
FROM node:lts-slim

ARG NPM_REG

# loopback cli tool
RUN npm install -g loopback-cli $NPM_REG
RUN npm install -g nodemon $NPM_REG
RUN npm install -g apiconnect $NPM_REG

WORKDIR /app
