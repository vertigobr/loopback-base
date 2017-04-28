#
# Base Loopback (over Node)
#
FROM node:7

# optimize later
RUN npm install -g loopback-cli && \
    npm cache clear

WORKDIR /usr/src

# Install app dependencies
COPY src/package.json /usr/src/
RUN npm install

# Bundle app source
COPY src /usr/src

EXPOSE 3000
CMD [ "npm", "start" ]
