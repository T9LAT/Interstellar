FROM node:18-alpine

WORKDIR /app

COPY package*.json .

RUN npm install

COPY static public/
COPY src/index.js src/

EXPOSE 8080

CMD ["npm", "start"]