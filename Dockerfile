FROM telegraf:latest
LABEL maintainer="jaroslav.barton@comsource.cz"

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp-mibs-downloader && \
    rm -rf /var/lib/apt/lists/* && \
    download-mibs
