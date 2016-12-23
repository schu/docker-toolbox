FROM debian:8

RUN apt-get update && apt-get install -y -q --no-install-recommends netcat curl htop

CMD ["/bin/bash"]
