ARG BASE_IMAGE
ARG ARCH
FROM ${BASE_IMAGE:-ghcr.io/irakhlin/organizr-base:irakhlin/2026-10-22_07}-${ARCH:-linux-amd64}

LABEL maintainer="irakhlin"

ENV fpm="false" branch="v2-master"

# add local files
COPY root/ /


# ports and volumes
EXPOSE 80
VOLUME /config
