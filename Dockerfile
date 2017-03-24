FROM library/redis:3.2
MAINTAINER Cory Buecker <email@corybuecker.com>

COPY ["docker-entrypoint.sh", "/usr/local/bin/"]
