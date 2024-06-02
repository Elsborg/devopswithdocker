FROM node:16-alpine

WORKDIR /usr/src/app

EXPOSE 5000

COPY . .

RUN npm install

RUN npm run build

RUN npm install -g serve

CMD ["serve", "-s", "build", "-l", "5000"]