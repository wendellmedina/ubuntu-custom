# My custom Ubuntu docker image
# https://github.com/wendellmedina/ubuntu-custom
#
# Pull base image.
FROM ubuntu:18.04
MAINTAINER Wendell Medina <wendellmedina@gmail.com>

# Install.packages
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y curl git vim wget && \
  rm -rf /var/lib/apt/lists/*
