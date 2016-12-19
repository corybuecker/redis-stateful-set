FROM library/redis:3.2
MAINTAINER Cory Buecker <email@corybuecker.com>

COPY ["redis.conf", "/opt/"]
COPY ["docker-entrypoint.sh", "/usr/local/bin/"]
