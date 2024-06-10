FROM node:16-alpine as build

WORKDIR /usr/src/app

COPY . .

RUN npm install

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm run build

FROM node:16-alpine

WORKDIR /usr/src/app

COPY --from=build /usr/src/app/build /usr/src/app/build

RUN npm install -g serve && \
    addgroup -S appgroup && adduser -S appuser -G appgroup && \
    chown -R appuser:appgroup build

USER appuser

EXPOSE 5000

CMD ["serve", "-s", "build", "-l", "5000"]
