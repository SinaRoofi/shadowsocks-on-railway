
FROM debian:bullseye-slim

RUN apt-get update && \
    apt-get install -y shadowsocks-libev && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

ENV PASSWORD=${PASSWORD}
ENV METHOD=${METHOD}
ENV PORT=${PORT}

CMD ss-server -s 0.0.0.0 -p ${PORT} -k ${PASSWORD} -m ${METHOD} -v

