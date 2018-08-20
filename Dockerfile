FROM debian

RUN apt-get update && apt-get install -y -q --no-install-recommends \
  netcat-openbsd \
  curl \
  dnsutils \
  htop \
  wget

RUN apt-get clean

CMD ["/bin/bash"]
