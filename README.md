# docker-learn
docker学习笔记<br />
注意：<br />
  1.因为在docker官网下载的ubuntu镜像中的源是来自archive.ubuntu.com和ubuntu发行版不同。<br />
  2.容器在不显示的设置dns时，会使用8.8.8.8和8.8.8.4，因此网络会很不稳定<br />
解决办法：<br />
  修改容器的dns为114.114.114.114，即可以避免网络慢或者无法更新的问题<br />
  建议将修改好的容器提交，做为镜像保存<br />
因为启动容器时会重新初始化dns，所以修改docker的默认dns
vi /etc/default/docker
修改#docker_OPTS="--dns 8.8.8.8 --dns 8.8.4.4"为docker_OPTS="--dns 114.114.114.114"
