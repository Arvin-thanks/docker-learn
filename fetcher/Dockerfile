FROM thanks/ubuntu
MAINTAINER zhangbin@comein.cn
ENV REFRESHED_AT 2016-03-08
RUN apt-get -y update
RUN apt-get -y install wget
VOLUME ["/var/lib/tomcat7/webapps"]
WORKDIR /var/lib/tomcat7/webapps/
ENTRYPOINT ["wget"]
CMD ["-?"]