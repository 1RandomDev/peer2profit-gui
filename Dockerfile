FROM debian:latest

RUN apt update
RUN apt install -y x11vnc xvfb wget uuid-runtime
RUN wget "https://updates.peer2profit.app/peer2profit_0.48_amd64.deb"
RUN apt install -y ./peer2profit_0.48_amd64.deb

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN useradd -m peer2profit
USER peer2profit
WORKDIR /home/peer2profit
RUN mkdir ~/.config

ENTRYPOINT ["/entrypoint.sh"]