FROM node:19-alpine3.16
MAINTAINER Aleister<marucube35@gmail.com>
WORKDIR /app
COPY . /app
EXPOSE 3000
RUN npm install
CMD ["npm", "run", "start"]