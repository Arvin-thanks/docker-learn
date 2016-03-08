构建tomcat7应用服务器<br/>
构建命令:sudo docker build -t thanks/tomcat7 .
<br/>
<br/>
运行war文件:<br/>
sudo docker run --name sample_app --volumes-from sample -d -P thanks/tomcat7
