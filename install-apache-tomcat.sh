#!/bin/bash
echo "RUNNING TOMCAT INSTALLATION..!"
	sleep 2
echo "installing java version 1.8"
yum install java-1.8* -y
	sleep 2
	#echo "installation wget in local system.."
#yum install wget -y

	sleep 2
	echo "changing the Directory to opt"
	sleep 5
	echo "Downloading the tomcat_apache version v 10.1.8 ..."
 cd /opt/ && wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.8/bin/apache-tomcat-10.1.8.tar.gz

	sleep 2
	
	echo " extracting tomcat apache-10.1.8 and renaming to tomcat"
cd /opt/ &&  tar -zvxf apache-tomcat-10.1.8.tar.gz && mv apache-tomcat-10.1.8 tomcat
	sleep 2
	echo "creating soft link of tomcat.."

	ln -s /opt/tomcat/bin/startup.sh /usr/local/bin/tomcatup
  	ln -s /opt/tomcat/bin/shutdown.sh /usr/local/bin/tomcatdown

	echo "STARTING TOMCAT APACHE.."
	cd  /opt/tomcat/bin && sh startup.sh
	echo "TOMCAT APACHE V-10.1.8 STARTED SUCCESSFULLY....."
	echo "TO SHOWDOWN PLEASE USE TOMCATDOWN"
