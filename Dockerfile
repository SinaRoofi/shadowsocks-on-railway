FROM debian:bullseye-slim

RUN apt-get update && \
    apt-get install -y shadowsocks-libev && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

ENV PASSWORD=your_password
ENV METHOD=aes-256-gcm

# PORT از محیط Railway میاد
ENV PORT=${PORT:-8388}

CMD ss-server -s 0.0.0.0 -p $PORT -k $PASSWORD -m $METHOD -v

