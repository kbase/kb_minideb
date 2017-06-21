# KBase specific base minideb image

FROM bitnami/minideb:jessie
MAINTAINER Steve Chan sychan@lbl.gov

ARG BUILD_DATE
ARG VCS_REF
ARG BRANCH=master

RUN install_packages ca-certificates python python-jinja2 python-yaml python-pip httpie && \
    update-ca-certificates && \
    pip install shinto-cli[yaml]

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/kbase/kb_minideb.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="1.0.0-rc1" \
      us.kbase.debian-release=jessie
