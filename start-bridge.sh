#!/bin/sh

IP="`ip route get 8.8.8.8 | awk '{print $NF; exit}'`"

set -x

docker run -d -p ${IP}:3883:1883 -p ${IP}:2880:1880 -p ${IP}:28519:28519 -p ${IP}:28520:28520 -p ${IP}:2222:22 -p ${IP}:2883:1883 -p ${IP}:8234:8234 -t mbed/connector-bridge  /home/arm/start_instance.sh $*