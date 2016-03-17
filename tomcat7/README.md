构建tomcat7应用服务器<br/>
构建命令:sudo docker build -t thanks/tomcat7 .
<br/>
<br/>
运行war文件:<br/>
sudo docker run --name sample_app --volumes-from sample -d -P thanks/tomcat7


 sudo docker run -d -P --name event_interface -v /home/comein/test/comein:/var/lib/tomcat7/webapps/comein --link redis_primary:redis_primary thanks/tomcat7
