ARG BASE_IMAGE
ARG ARCH
FROM ${BASE_IMAGE:-ghcr.io/irakhlin/organizr-base:2026-08-26_17}-${ARCH:-linux-amd64}

LABEL maintainer="irakhlin"

ENV fpm="false" branch="v2-master"

# add local files
COPY root/ /


# ports and volumes
EXPOSE 80
VOLUME /config
