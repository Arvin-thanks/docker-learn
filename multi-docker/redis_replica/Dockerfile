FROM thanks/redis
MAINTAINER zhangbin@comein.cn
ENV REFRESHED_AT 2016-03-10
ENTRYPOINT ["redis-server", "--logfile /var/log/redis/redis-replica.log", "--slaveof redis_primary 6379"]