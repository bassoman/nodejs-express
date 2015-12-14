FROM bassoman/ubuntu-jdk-xalan
MAINTAINER Jon Lancelle <bassoman@gmail.com>

RUN apt-get update -y
#RUN apt-get dist-upgrade -y

RUN apt-get install curl -y && apt-get install -y git

#RUN curl -sL https://deb.nodesource.com/setup | bash -
#RUN apt-get -qqy install nodejs && apt-get -qqy install build-essential
RUN apt-get -y install nodejs && apt-get install -y npm

RUN rm -f proj
ADD LetsMeet /proj/LetsMeet
COPY entrypoint.sh /usr/local/bin/

EXPOSE 3000

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]


