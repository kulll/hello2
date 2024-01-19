FROM ghcr.io/kulll/hello_base
COPY modules web/modules
COPY profiles web/profiles
COPY themes web/themes
RUN apt update; apt install default-mysql-client -y
