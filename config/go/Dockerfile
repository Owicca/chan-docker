FROM golang:1.18.2-alpine

WORKDIR /app/

RUN apk update && apk add make
RUN go install github.com/githubnemo/CompileDaemon@latest

CMD make dev_reload
