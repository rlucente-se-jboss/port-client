FROM fedora:22

MAINTAINER Rich Lucente <rlucente@redhat.com>

LABEL vendor="Red Hat"
LABEL version="0.1"
LABEL description="Client to test port connectivity"

# Add the needed packages for netcat
RUN    dnf -y update \
    && dnf -y install \
           net-tools \
           nmap-ncat \
    && dnf -y clean all

USER 1000

CMD /bin/bash

