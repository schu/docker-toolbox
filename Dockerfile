FROM debian

RUN apt-get update && apt-get install -y -q --no-install-recommends \
  ca-certificates \
  curl \
  dnsutils \
  htop \
  jq \
  less \
  netcat-openbsd \
  nmap \
  procps \
  screen \
  tmux \
  vim \
  wget

RUN apt-get clean

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.11.2/bin/linux/amd64/kubectl && chmod +x kubectl && mv kubectl /usr/local/bin/kubectl

CMD ["/bin/bash"]
