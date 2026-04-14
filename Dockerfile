FROM ubuntu:24.04
COPY install_proxy.sh install_proxy.sh
COPY install_nginx install_nginx
RUN chmod +x install_nginx.sh
RUN ./install_nginx.sh
CMD ["/usr/sbin/init"]