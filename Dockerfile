FROM kalilinux/kali-rolling

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y default-jdk default-jre curl git live-build cdebootstrap fdisk vim time avahi-daemon apt-cacher-ng
RUN echo 'Acquire::http::Proxy "http://localhost:3142";' | tee /etc/apt/apt.conf.d/proxy
RUN mkdir -p /home/live-build-kali
RUN git clone https://gitlab.com/kalilinux/build-scripts/live-build-config /home/live-build-kali

WORKDIR /home/live-build-kali
ENTRYPOINT []
