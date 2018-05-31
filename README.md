# Docker Ethminer

Dockerized Ethminer.

Using [improved version](https://github.com/ethereum-mining/ethminer) of Genoils Cuda Miner.


## Build And Push To DockerHub

```
docker build -t kristophjunge/ethminer-cuda .
docker login
docker push kristophjunge/ethminer-cuda
```
