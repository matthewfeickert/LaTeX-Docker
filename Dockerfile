FROM ubuntu:bionic

MAINTAINER Matthew Feickert <matthew.feickert@cern.ch>

ENV HOME /root
WORKDIR /root

ENV DEBIAN_FRONTEND noninteractive

# Install general dependencies
RUN apt-get -qq -y update && \
    apt-get -qq -y install \
        curl \
        wget \
        rsync \
        build-essential \
        zip \
        python-pip \
        jq \
        git \
        libfontconfig \
        locales \
        software-properties-common \
        sshpass \
        ghostscript \
        vim && \
    apt-get -y autoclean && \
    apt-get -y autoremove

# Install latest TeX Live
RUN wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz && \
    tar -zxvf install-tl-unx.tar.gz && \
    wget https://raw.githubusercontent.com/fermiumlabs/latex-docker/master/texlive.profile && \
    install-*/install-tl --profile=texlive.profile && \
    rm -rf install-tl*

# Export useful TeX Live paths
ENV PATH /opt/texbin:$PATH
ENV PATH /usr/local/texlive/2017/bin/x86_64-linux:$PATH

# Test LaTeX
RUN wget ftp://www.ctan.org/tex-archive/macros/latex/base/small2e.tex && \
    latex small2e.tex && \
    xelatex small2e.tex && \
    lualatex small2e.tex

RUN rm -rf /var/lib/apt/lists/* && \
    rm -rf /root/*

WORKDIR /root
VOLUME ["/root"]
