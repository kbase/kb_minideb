# Makefile for KBase specific minideb
#
# Author: Steve Chan sychan@lbl.gov
#

all: docker_image

docker_image:
	wget https://github.com/kbase/dockerize/raw/dist/dockerize-linux-amd64-v0.5.0.tar.gz
	tar xvzf dockerize-linux-amd64-v0.5.0.tar.gz
	IMAGE_NAME="kbase/kb_minideb" hooks/build
