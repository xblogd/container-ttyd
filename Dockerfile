FROM ubuntu:18.04
RUN apt-get update
RUN echo "prot:" $PORT
ADD https://github.com/tsl0922/ttyd/releases/download/1.6.3/ttyd.x86_64 /sbin/ttyd
RUN chmod +x /sbin/ttyd
CMD /sbin/ttyd --port  $PORT -c xhuan:xhuan123  bash
