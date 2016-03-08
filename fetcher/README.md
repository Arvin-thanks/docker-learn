此文件做为拉取war文件的容器<br/>
启动命令：sudo docker build -t thanks/fetcher .
<br/>
<br/>
war包拉取命令：<br/>
sudo docker run -t -i --name sample thanks/fetcher http://xxx.xxx/sample.war
