FROM ubuntu:24.04
RUN . .
RUN chmod +x install_nginx.sh
RUN ./install_nginx.sh
CMD ["/usr/sbin/init"]