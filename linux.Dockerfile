# escape=`
FROM lacledeslan/gamesvr-cssource

HEALTHCHECK NONE

ARG BUILDNODE=unspecified
ARG SOURCE_COMMIT=unspecified

LABEL com.lacledeslan.build-node=$BUILDNODE `
      org.label-schema.schema-version="1.0" `
      org.label-schema.url="https://github.com/LacledesLAN/README.1ST" `
      org.label-schema.vcs-ref=$SOURCE_COMMIT `
      org.label-schema.vendor="Laclede's LAN" `
      org.label-schema.description="LL Counter-Strike Sourced Dedicated Server" `
      org.label-schema.vcs-url="https://github.com/LacledesLAN/gamesvr-cssource-freeplay"

COPY --chown=CSSource:root /sourcemod.linux /app/cstrike

COPY --chown=CSSource:root /sourcemod-configs /app/cstrike

COPY --chown=CSSource:root /dist/cstrike /app/cstrike

COPY --chown=CSSource:root /dist/linux/ll-tests /app/ll-tests

RUN usermod -l CSSourceFreeplay CSSource && `
    chmod +x /app/ll-tests/*.sh;

USER CSSourceFreeplay

WORKDIR /app/

ONBUILD USER root
