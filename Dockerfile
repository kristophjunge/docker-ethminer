FROM nvidia/cuda

MAINTAINER Kristoph Junge <kristoph.junge@gmail.com>

RUN apt-get update && \
    apt-get -y install ca-certificates git cmake --no-install-recommends && \
    rm -r /var/lib/apt/lists/*

RUN mkdir -p /opt/cpp-ethereum

WORKDIR /opt/cpp-ethereum

RUN git clone https://github.com/Genoil/cpp-ethereum.git .

RUN mkdir build && \
    cd build && \
    cmake -DETHASHCUDA=ON -DETHASHCL=OFF -DETHSTRATUM=ON .. && \
    cmake --build .

COPY docker-entrypoint.sh /docker-entrypoint.sh

CMD ["/docker-entrypoint.sh"]
