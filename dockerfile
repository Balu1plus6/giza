FROM ubuntu:20.04  
LABEL maintainer="Balaji" 
RUN  apt-get -y update && apt-get -y install nginx
COPY default.html /etc/nginx/sites-available/default
COPY index.html /usr/share/nginx/html/index.html
## Install python in Docker image
RUN apt-get update && apt-get install -y python3 && apt-get install -y python3-pip
## Install requirements
RUN pip3 install -r requirements.txt
EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
## Make Docker container executable
ENTRYPOINT ["/usr/bin/python3", "inference.py"]