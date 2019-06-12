FROM arobson/alpine-nginx:latest

RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*
COPY ./root-ca-cert.crt /usr/local/share/ca-certificates/npm-root-ca.crt
RUN update-ca-certificates
