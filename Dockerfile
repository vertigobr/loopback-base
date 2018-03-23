#
# Base Loopback (over Node)
#
FROM node:7

# loopback cli tool
RUN npm install -g loopback-cli && \
    npm install -g nodemon && \
    npm cache clear

WORKDIR /usr/app

# Install app dependencies
COPY package.json /usr/app/
RUN npm install --quiet && \
    npm cache clear

# Bundle app source
COPY . /usr/app/

EXPOSE 3000
CMD [ "npm", "start" ]
