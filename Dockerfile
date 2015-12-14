#FROM bassoman/ubuntu-jdk-xalan
FROM xalan-dev
MAINTAINER Jon Lancelle <bassoman@gmail.com>

RUN apt-get update -y && apt-get install -y git

RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -

RUN apt-get install -y nodejs

#RUN apt-get install -y npm

#RUN rm -f proj
#ADD LetsMeet /proj/LetsMeet

#COPY entrypoint.sh /

EXPOSE 3000

#ENTRYPOINT ["/entrypoint.sh"]


