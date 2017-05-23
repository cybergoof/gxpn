# Identify the base image.  In this case, from 
#  https://hub.docker.com/r/phusion/baseimage/"
# This image has SSH client installed and ready to go.
FROM phusion/baseimage

# Labels just add Metadata to the image.  
#    Its like code comments for Docker images
LABEL maintainer="cybergoof"
LABEL description="This Dockerfile was build for a GXPN Gold Paper.  It will be the Attacker Box for Lab 2"
LABEL name="attacker"




# Get everything updated
RUN apt-get update

# For this lab, we will use an SSH tunnel and  proxychains 
#   to do an NMAP survey of the target systems
RUN apt-get install -y nmap
RUN apt-get install -y proxychains

# Installing ping to make it easier to test 
#   connectivity to the other containers
RUN apt-get install -y iputils-ping
