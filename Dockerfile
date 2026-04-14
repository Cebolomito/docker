FROM ubuntu:24.04
COPY . .
RUN chmod +x install_nginx.sh && ./install_nginx.sh
CMD ["/usr/sbin/init"]