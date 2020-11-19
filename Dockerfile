FROM cabanaonline/alpine:1.0

ARG USER=cabana
ENV HOME /home/$USER

# Downloads compiled libraries.
RUN set -xe; \
    \
    git clone -b v2.2.2 https://github.com/marbl/Mash.git tools/mash

# Entrypoint to keep the container running.
ENTRYPOINT ["tail", "-f", "/dev/null"]