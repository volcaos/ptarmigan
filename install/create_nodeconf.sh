#!/bin/sh
set -ue

echo port=$1
echo name=node_$1
WIF=`./ucoind wif`
echo $WIF
echo ipv4=127.0.0.1
