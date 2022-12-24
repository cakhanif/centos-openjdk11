FROM quay.io/centos/centos:stream8

LABEL Maintainer='Mohammad Hanif'
LABEL Description='For Base Image JDK 11'

RUN INSTALL_PKGS="tar unzip bc which lsof java-11-openjdk java-11-openjdk-devel" && \
    yum update -y && \
    yum install -y $INSTALL_PKGS && \
    rpm -V $INSTALL_PKGS && \
    yum clean all -y
