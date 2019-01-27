# LaTeX Docker

Dockerfile for a image built from Ubuntu containing latest version of TeX Live

[![Docker Automated build](https://img.shields.io/docker/automated/matthewfeickert/latex-docker.svg)](https://hub.docker.com/r/matthewfeickert/latex-docker/)
[![Docker Build Status](https://img.shields.io/docker/build/matthewfeickert/latex-docker.svg)](https://hub.docker.com/r/matthewfeickert/latex-docker/builds/)
[![Docker Pulls](https://img.shields.io/docker/pulls/matthewfeickert/latex-docker.svg)](https://hub.docker.com/r/matthewfeickert/latex-docker/)
[![download-size number-of-layers](https://images.microbadger.com/badges/image/matthewfeickert/latex-docker.svg)](https://microbadger.com/images/matthewfeickert/latex-docker)

## Packages Installed

Through `apt-get` the following packages are installed:

- curl
- wget
- rsync
- build-essential
- zip
- jq
- git
- libfontconfig
- locales
- software-properties-common
- sshpass
- ghostscript
- vim

TeX Live is installed by downloading and running the [Tex Live installer](http://tug.org/texlive/doc/texlive-en/texlive-en.html#x1-140003).

## [Tags](https://hub.docker.com/r/matthewfeickert/latex-docker/tags)

- `latest`
- `2018`

## Use

Pull the image from Docker Hub

```
docker pull matthewfeickert/latex-docker:latest
```

if the image is run without a default command it will look for a `Makefile` and if found execute `make`
