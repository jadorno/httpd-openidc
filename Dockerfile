FROM httpd:2.4-buster

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -y \
    && apt install -y --no-install-recommends ca-certificates libapache2-mod-auth-openidc \
    && rm -rf /var/lib/apt/lists/*
