#!/usr/bin/env bash

set -e

echo "Waiting ${STARTUP_DELAY} seconds"

sleep ${STARTUP_DELAY}

echo "Starting miner"

cd /opt/ethminer/bin

./ethminer -P stratum+ssl://${USERPASS}@${STRATUM} -P stratum+ssl://${USERPASS}@${FAILOVER_STRATUM} -U -RH --api-port -3333
