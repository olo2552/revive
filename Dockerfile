FROM base/archlinux
LABEL MAINTAINER="Aleksander Wielgorski <a.wielgorski@protonmail.com>"
LABEL version="0.0.1"
RUN pacman -Syyu --noconfirm\
  && pacman-db-upgrade\
  && pacman -S --noconfirm sudo git ansible
RUN git clone https://github.com/olo2552/revive.git /root/repos/REVIVE
ENTRYPOINT ["bash", "/root/repos/REVIVE/REVIVE.sh"]