FROM thanks/ubuntu
MAINTAINER zhangbin@comein.cn
ENV REFRESHED_AT 2016-03-14
RUN apt-get -y update
RUN apt-get -y install git
VOLUME ["/var/lib/tomcat7/webapps"]
WORKDIR /var/lib/tomcat7/webapps/
ADD fetcher.sh /usr/local/src/fetcher.sh
RUN chmod +x /usr/local/src/fetcher.sh
ADD doc.sh /var/local/src/doc.sh
RUN chmod +x /var/local/src/doc.sh
ENTRYPOINT ["sh"]
CMD ["/var/local/src/doc.sh"]