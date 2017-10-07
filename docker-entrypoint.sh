#!/usr/bin/env bash

set -e

echo "Waiting ${STARTUP_DELAY} seconds"

sleep ${STARTUP_DELAY}

echo "Starting miner"

cd /opt/cpp-ethereum/build/ethminer

./ethminer --farm-recheck 200 -G -S ${STRATUM} -FS ${FAILOVER_STRATUM} -O ${USERPASS} --cuda
