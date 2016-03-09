FROM thanks/ubuntu
MAINTAINER zhangbin@comein.cn
ENV REFRESHED_AT 2016-06-01
RUN apt-get -y update
RUN apt-get -y install ruby ruby-dev make nodejs
RUN apt-get -y update
RUN gem install --no-rdoc --no-ri jekyll -v 2.5.3
VOLUME /data/
VOLUME /var/www/html
WORKDIR /data
ENTRYPOINT ["jekyll", "build", "--destination=/var/www/html"]
