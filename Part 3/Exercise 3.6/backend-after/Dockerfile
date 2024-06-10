FROM golang:1.16-alpine as build

WORKDIR /usr/src/app

COPY . .

ENV REQUEST_ORIGIN=http://localhost:5000

RUN go build

FROM alpine:3.14

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

WORKDIR /app

COPY --from=build /usr/src/app /app

RUN chown -R appuser:appgroup /app

EXPOSE 8080

USER appuser

CMD [ "./server" ]
