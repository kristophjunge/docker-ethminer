FROM nvidia/cuda

MAINTAINER Kristoph Junge <kristoph.junge@gmail.com>

RUN apt-get update && \
    apt-get -y install ca-certificates curl --no-install-recommends && \
    rm -r /var/lib/apt/lists/*

RUN mkdir -p /opt/ethminer

WORKDIR /opt/ethminer

RUN curl -s -L -o /tmp/ethminer.tar.gz https://github.com/ethereum-mining/ethminer/releases/download/v0.15.0.dev5/ethminer-0.15.0.dev5-Linux.tar.gz && \
    tar -xzf /tmp/ethminer.tar.gz -C /opt/ethminer

COPY docker-entrypoint.sh /docker-entrypoint.sh

EXPOSE 3333

CMD ["/docker-entrypoint.sh"]
