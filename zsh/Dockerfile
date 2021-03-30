FROM ubuntu:20.04

RUN apt-get update && apt-get install -y sudo

RUN useradd -m tom && echo "tom:password" | chpasswd && adduser tom sudo
USER tom
WORKDIR /home/tom
COPY --chown=tom starship.toml setup.sh .zshrc git/dotfiles/
CMD ["/bin/bash"]

