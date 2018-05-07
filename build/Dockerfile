FROM workmote/base:latest

# Version number for WorkMote's Docker DNS Image.
LABEL com.workmote.we.dns.version="0.1"
# Maintainer for WorkMote's Docker DNS Image.
LABEL com.workmote.we.dns.maintainer="Daniel Dalgo <dalguete@gmail.com>"
# Purpose of anything here installed for WorkMote's Docker DNS Image.
LABEL com.workmote.we.dns.purpose="dns"
# Application name here installed for WorkMote's Docker DNS Image.
LABEL com.workmote.we.dns.app="dnsmasq"

# To avoid having errors like "unable to initialize frontend: Dialog" when packages
# are upgraded/installed.
ARG DEBIAN_FRONTEND=noninteractive

# Start everything as the expected (generally) root user, so there won't be
# installation problems in case base image has set USER to something different.
USER root

# 00
# Packages installation.
COPY 00-packages-installation/ /tmp/00-packages-installation/
RUN /tmp/00-packages-installation/packages-installation.sh \
  && rm -r /tmp/00-packages-installation/

# 01
# Dns Server Configs.
COPY 01-dns-server-configs/dns-init /usr/local/bin/
COPY 01-dns-server-configs/ /tmp/01-dns-server-configs/
RUN /tmp/01-dns-server-configs/dns-server-configs.sh \
  && rm -r /tmp/01-dns-server-configs/
EXPOSE 53

# 02
# Kick off scripts scripts.
COPY 02-kick-off/kick-off /usr/local/bin/
COPY 02-kick-off/my-bindfs-mounts /etc/default/

# 03
# Set the main processes for supervisor to run. The reason of containers using this image.
COPY 03-supervisor/ /etc/supervisor/conf.d/

# 04
# Perform some final processes.
COPY 04-finally/ /tmp/04-finally/
RUN /tmp/04-finally/finally.sh \
  && rm -r /tmp/04-finally/

# 05
# Setup the user to use to trigger any process inside this contained.
ARG CustomUsername="workmote"
USER ${CustomUsername}