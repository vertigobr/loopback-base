#
# Base Loopback (over Node)
#
FROM node:9

# loopback cli tool
RUN npm -g config set user root && \
    npm install -g loopback-cli && \
    npm install -g nodemon && \
    npm -g config set user nobody && \
    npm cache clear --force

WORKDIR /usr/app

