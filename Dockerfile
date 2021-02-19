FROM ubuntu:20.04

RUN apt-get update && apt-get install -y -q --no-install-recommends \
  binutils \
  ca-certificates \
  curl \
  dnsutils \
  htop \
  jq \
  less \
  netcat-openbsd \
  nmap \
  openssh-client \
  procps \
  python3 \
  python3-virtualenv \
  screen \
  tmux \
  vim \
  wget

RUN apt-get clean

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.20.4/bin/linux/amd64/kubectl && chmod +x kubectl && mv kubectl /usr/local/bin/kubectl

CMD ["/bin/bash"]
