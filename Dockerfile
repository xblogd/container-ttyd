FROM ubuntu:18.04
RUN apt-get update
RUN echo "prot:" $PROT
ADD https://github.com/tsl0922/ttyd/releases/download/1.6.3/ttyd.x86_64 /sbin/ttyd
CMD /sbin/ttyd -P $PROT
