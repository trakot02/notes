FROM ubuntu:latest
ARG pandoc_version=2.16.1

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && apt-get -y install apt-utils sudo tzdata curl wget
RUN apt-get -y install texlive texlive-science texlive-latex-extra python3 python3-pip

WORKDIR /tmp
RUN wget https://github.com/jgm/pandoc/releases/download/${pandoc_version}/pandoc-${pandoc_version}-1-amd64.deb && dpkg -i pandoc-${pandoc_version}-1-amd64.deb
RUN sudo pip install pandoc-eqnos pandoc-fignos pandoc-tablenos

RUN apt-get -y update \
    && curl -sL https://deb.nodesource.com/setup_17.x | sudo -E bash - \
    && sudo apt-get install -y nodejs

RUN mkdir /data
VOLUME /data

WORKDIR /data

CMD [ "/bin/bash" ]