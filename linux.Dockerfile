FROM lacledeslan/gamesvr-cssource

ARG BUILD_NODE=unspecified
ARG GIT_REVISION=unspecified

LABEL architecture="amd64" \
    com.lacledeslan.build-node="$BUILD_NODE" \
    maintainer="Laclede's LAN <contact@lacledeslan.com>" \
    org.opencontainers.image.description="Laclede's LAN Counter-Strike Source Dedicated Freeplay Server" \
    org.opencontainers.image.revision="$GIT_REVISION" \
    org.opencontainers.image.source="https://github.com/LacledesLAN/gamesvr-cssource-freeplay" \
    org.opencontainers.image.vendor="Laclede's LAN"

HEALTHCHECK NONE

COPY --chown=CSSource:root /sourcemod.linux /app/cstrike

COPY --chown=CSSource:root /sourcemod-configs /app/cstrike

COPY --chown=CSSource:root /dist/cstrike /app/cstrike

COPY --chown=CSSource:root /dist/linux/ll-tests /app/ll-tests

RUN usermod -l CSSourceFreeplay CSSource && \
    chmod +x /app/ll-tests/*.sh;

USER CSSourceFreeplay

WORKDIR /app/

ONBUILD USER root
