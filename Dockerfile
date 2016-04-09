from fedora:22

RUN useradd -u 500 -m user500
RUN useradd -u 501 -m user501

RUN dnf install -y iproute iputils tcpdump ntpdate strace bonnie++
RUN setcap cap_net_raw,cap_net_admin+p /usr/bin/ping
RUN cp /usr/bin/ping /usr/bin/ping-nopriv


