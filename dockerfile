FROM ubuntu:20.04  
LABEL maintainer="Balaji" 
RUN  apt-get -y update && apt-get -y install nginx
COPY default.html /etc/nginx/sites-available/default
COPY index.html /usr/share/nginx/html/index.html
echo "balaji"
EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]