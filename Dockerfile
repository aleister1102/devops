FROM node:node:14-alpine
MAINTAINER Aleister<marucube35@gmail.com>
WORKDIR /app
COPY . /app
RUN npm install
CMD ["npm", "run", "start"]