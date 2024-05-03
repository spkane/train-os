FROM fedora:40

RUN useradd -u 500 -m user500 && \
  useradd -u 501 -m user501

RUN dnf install -y \
      bonnie++ \
      hostname \
      iproute \
      iputils \
      kubernetes-client \
      lsof \
      ntpsec \
      procps-ng \
      strace \
      stress \
      tcpdump \
      util-linux && \
  dnf clean all

RUN setcap cap_net_raw,cap_net_admin+p /usr/bin/ping && \
  cp /usr/bin/ping /usr/bin/ping-nopriv
