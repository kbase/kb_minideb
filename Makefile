# Makefile for KBase specific minideb
#
# Author: Steve Chan sychan@lbl.gov
#

all: docker_image

docker_image:
	wget -N https://github.com/kbase/dockerize/raw/master/dockerize-linux-amd64-v0.6.1.tar.gz
	tar xvzf dockerize-linux-amd64-v0.6.1.tar.gz
	IMAGE_NAME="kbase/kb_minideb" hooks/build
