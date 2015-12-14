FROM bassoman/ubuntu-jdk-xalan
MAINTAINER Jon Lancelle <bassoman@gmail.com>

RUN apt-get update && apt-get -y \
	git \
	nodejs \
	npm

#RUN rm -f proj
#ADD LetsMeet /proj/LetsMeet

COPY entrypoint.sh /usr/local/bin/

EXPOSE 3000

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]


