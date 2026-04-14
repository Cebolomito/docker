FROM ubuntu:24.04
COPY . .
RUN apt update && apt install nginx -y
CMD ["/usr/sbin/init"]