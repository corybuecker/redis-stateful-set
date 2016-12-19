#!/bin/bash

set -e
set -x

set -- $(which redis-server) /opt/redis.conf

if [ -v REPLICAOF ] && [ ! -v SENTINEL ]; then
  set -- $@ --slaveof $REPLICAOF 6379
fi

if [ -v SENTINEL ]; then
	echo "sentinel monitor primary $SENTINEL 6379 2" >> /opt/redis.conf
	echo "sentinel down-after-milliseconds primary 5000" >> /opt/redis.conf
	echo "sentinel failover-timeout primary 10000" >> /opt/redis.conf
	echo "sentinel parallel-syncs primary 1" >> /opt/redis.conf

	set -- $@ --port 26379 --sentinel
fi

exec "$@"
