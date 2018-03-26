# LaTeX Docker

Dockerfile for a container built off Ubuntu containing latest version of TeX Live

[![Docker Automated build](https://img.shields.io/docker/automated/matthewfeickert/latex-docker.svg)](https://hub.docker.com/r/matthewfeickert/latex-docker/)
[![Docker Build Status](https://img.shields.io/docker/build/matthewfeickert/latex-docker.svg)](https://hub.docker.com/r/matthewfeickert/latex-docker/builds/)

## Packages Installed

Through `apt-get` the following packages are installed:

- curl
- wget
- build-essential
- zip
- python-pip
- jq
- git
- libfontconfig
- locales
- software-properties-common
- sshpass
- ghostscript

TeX Live is installed by downloading and installing the source.

## Acknowledgements
Large portions of this Dockerfile are modeled off of/taken from [FermiumLabs' Dockerfile](https://hub.docker.com/r/fermiumlabs/latex-docker/~/dockerfile/)
