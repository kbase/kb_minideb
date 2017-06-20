# Makefile for KBase specific minideb
#
# Author: Steve Chan sychan@lbl.gov
#

all: docker_image

docker_image:
	IMAGE_NAME="kbase/kb_minideb" hooks/build
