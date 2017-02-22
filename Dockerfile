FROM debian:8

RUN apt-get update && apt-get install -y -q --no-install-recommends \
  netcat-openbsd \
  curl \
  htop \
  wget

CMD ["/bin/bash"]
