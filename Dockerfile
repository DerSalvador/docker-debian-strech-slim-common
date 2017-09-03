FROM stretch-slim 

MAINTAINER C. Fernando Maciel <claudio.fernando.maciel@dersalvador.com>

RUN apt-get update -y
RUN apt-get install -y \
  curl \
  gnupg \
  gnupg2 \
  gnupg1 \
  sudo \
  pdftk

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get update -y
RUN apt-get install -y nodejs
RUN dpkg-query -l |grep -i node
