FROM postgres
LABEL maintainer="niels.linnemann@foxtag.de"

ADD init_databases.sql /docker-entrypoint-initdb.d/

ADD setupRemoteConnections.sh /docker-entrypoint-initdb.d/setupRemoteConnections.sh
RUN chmod 755 /docker-entrypoint-initdb.d/setupRemoteConnections.sh