# KBase specific base minideb image

FROM bitnami/minideb:stretch

ARG BUILD_DATE
ARG VCS_REF
ARG BRANCH=master

RUN install_packages ca-certificates && \
    update-ca-certificates && \
    mkdir -p /kb/deployment/bin

COPY dockerize /kb/deployment/bin

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/kbase/kb_minideb.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="1.0.0-rc1" \
      us.kbase.debian-release=stretch \
      maintainer="Steve Chan sychan@lbl.gov"

