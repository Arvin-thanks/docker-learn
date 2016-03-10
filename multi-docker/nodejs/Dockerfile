FROM thanks/ubuntu
MAINTAINER  zhangbin@comein.cn
ENV REFRESHED_AT  2016-03-10
RUN apt-get -y update
RUN apt-get -y install nodejs npm
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN mkdir -p /var/log/nodeapp
ADD nodeapp /opt/nodeapp/
WORKDIR /opt/nodeapp
RUN npm install
VOLUME ["/var/log/nodeapp"]
EXPOSE 3000
ENTRYPOINT ["nodejs", "server.js"]