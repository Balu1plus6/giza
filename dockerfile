FROM ubuntu:20.04  
LABEL maintainer="Balaji" 
#RUN  apt-get -y update && apt-get -y install nginx

## Set workdir in Docker Container
# set default workdir in your docker container
# In other words your scripts will run from this directory
#RUN mkdir /workdir
#WORKDIR /workdir

## Copy your files into Docker Container
#COPY -R /path/to/your/workdir/* /workdir
#RUN chmod a+x /workdir/inference.py

## Install python in Docker image
RUN apt-get update && apt-get install -y python3 && apt-get install -y python3-pip

## Install requirements
#RUN pip3 install -r requirements.txt
EXPOSE 80
## Make Docker container executable
ENTRYPOINT ["/usr/bin/python3", "-g", "daemon off;"]

#COPY default /etc/nginx/sites-available/default
#COPY index.html /usr/share/nginx/html/index.html

#CMD ["/usr/sbin/nginx", "-g", "daemon off;"]