FROM alpine:latest

RUN apk add --no-cache shadowsocks-libev

ENV PASSWORD=your_password
ENV PORT=8388
ENV METHOD=aes-256-gcm

CMD ss-server -s 0.0.0.0 -p $PORT -k $PASSWORD -m $METHOD
