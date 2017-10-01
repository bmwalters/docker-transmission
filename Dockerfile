FROM linuxserver/transmission

COPY ./tr-control-easy-install-en.sh /tr-control-easy-install-en.sh

ADD https://raw.githubusercontent.com/JrCs/docker-transmission/dc2f74fa2d75fbbeaa7686b9a4bcd6d808cca143/root/etc/cont-finish.d/10-shutdown /etc/cont-finish.d/

RUN sh tr-control-easy-install-en.sh && rm tr-control-easy-install-en.sh
