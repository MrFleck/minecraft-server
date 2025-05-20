FROM itzg/minecraft-server

EXPOSE 25565

VOLUME ["/data"]
WORKDIR /data

ENV TYPE=VANILLA VERSION=LATEST EULA=TRUE

ENTRYPOINT [ "/start" ]
HEALTHCHECK --start-period=2m --retries=2 --interval=30s CMD mc-health