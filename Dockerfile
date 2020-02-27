FROM node:8

WORKDIR /usr/src/app

COPY package*.json ./

COPY .npmrc ./
COPY .npmrc.user  /root/.npmrc

RUN npm install
COPY . .

EXPOSE 3000
CMD npm start
