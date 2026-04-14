FROM ubuntu:24.04
COPY install_proxy.sh install_proxy.sh
COPY install_nginx.sh install_nginx.sh
RUN chmod +x install_nginx.sh
RUN ./install_nginx.sh
CMD ["/usr/sbin/init"]