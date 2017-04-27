#
# Base Loopback (over Node)
#
FROM node:7

# optimize later
RUN npm install -g loopback-cli && \
    npm cache clear

WORKDIR /usr/src
