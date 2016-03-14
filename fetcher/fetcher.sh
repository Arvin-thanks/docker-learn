#!/bin/sh
appPath = "/var/lib/tomcat7/webapps/comein"
if [ ! -d "$appPath" ]; then 
	git clone git@192.168.1.88:/srv/git/comein.git
fi
cd comein
git pull  origin master 