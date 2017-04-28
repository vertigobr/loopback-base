#
# Base Loopback (over Node)
#
FROM node:7

# loopback cli tool
RUN npm install -g loopback-cli && \
    npm install -g nodemon && \
    npm cache clear

WORKDIR /usr/src

# Install app dependencies
COPY src/package.json /usr/src/
RUN npm install && \
    npm cache clear

# Bundle app source
COPY src /usr/src

EXPOSE 3000
CMD [ "npm", "start" ]
