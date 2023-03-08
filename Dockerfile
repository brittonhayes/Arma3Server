FROM ghcr.io/brittonhayes/armactl:latest as armactl

FROM gameservermanagers/gameserver:arma3

LABEL maintainer="Britton - github.com/brittonhayes"
LABEL org.opencontainers.image.source=https://github.com/brittonhayes/arma3server

COPY --from=armactl /bin/armactl /usr/bin/armactl

# Linux GSM
ENV GAMESERVER=arma3server
ENV LGSM_GITHUBUSER=GameServerManagers
ENV LGSM_GITHUBREPO=LinuxGSM
ENV LGSM_GITHUBBRANCH=master

EXPOSE 2302/udp
EXPOSE 2303/udp
EXPOSE 2304/udp
EXPOSE 2305/udp
EXPOSE 2306/udp

# Insecure workaround for failing symlink during install
RUN sudo chown -R linuxgsm:linuxgsm /root

ENTRYPOINT [ "/init" ]

CMD ["./entrypoint.sh"]