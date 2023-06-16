#######################################################################################################################################
#<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Copyright >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>#
#<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Powered by sampathkumarspace@gmail.com>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>#
#<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Application_Discovery_1.4.0_Phase 2 Ansible>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>#	
#<<<<<<IP>>>>>>><<<<<<<User>>>>>>>><<<<<<<Language>>>>>><<<<<<<middleware>>>>>>><<<<<<No Application Name>>>>>>>>><<<<<<<<OS>>>>>>>>>>#	
#<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Update @ 12032019>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>># 
#Update Comment :Another Column AddedSUDO Name - Discovered Technologies,SUDO Name - Additional Technologies		 				  #
#######################################################################################################################################
#!/bin/sh
rm -rf /tmp/.AppDisK
mkdir /tmp/.AppDisK
############PHP Apache Application######################
##########IP Address##########################
if [ `ps aux |grep httpd |sed '/grep/d' |wc -w` -gt 0 ]
then
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a1
###########user############################
mkdir /tmp/.AppDisK/aphp
ps aux |grep httpd |sed '/grep/d' > /tmp/.AppDisK/aphp/mqps
cat /tmp/.AppDisK/aphp/mqps|grep httpd > /dev/null && echo `cat /tmp/.AppDisK/aphp/mqps |grep httpd | awk {'print $1'} |sort -u`, >> /tmp/.AppDisK/b1 || echo "," >> /tmp/.AppDisK/b1
###########language############################
###########middleware############################
###########Script############################
if `cat /tmp/.AppDisK/aphp/mqps |grep httpd > /dev/null`
then echo cat `cat /tmp/.AppDisK/aphp/mqps |sort -u |awk NR==1{'print$11'} |grep -o '.*/bin/' |sed 's/bin/conf/g'`httpd.conf > /tmp/.AppDisK/aphp/samplephp
echo `cat /tmp/.AppDisK/aphp/samplephp` "|grep modules/libphp5.so |sed '/#/d'" >> /tmp/.AppDisK/aphp/wsamply
chmod +x /tmp/.AppDisK/aphp/wsamply
echo `/tmp/.AppDisK/aphp/wsamply |awk NR==1`, > /tmp/.AppDisK/aphp/wsamply.out
if `cat /tmp/.AppDisK/aphp/wsamply.out |grep LoadModule > /dev/null`
then 
echo "PHP,," > /tmp/.AppDisK/c1
echo "PHP with Apache WebServer," > /tmp/.AppDisK/d1
else 
echo "PHP Program,," > /tmp/.AppDisK/c1
echo "PHP Apache standalone Process,PHP," > /tmp/.AppDisK/d1
fi
else
echo "," > /tmp/.AppDisK/c1
echo "," > /tmp/.AppDisK/d1
fi
cat /tmp/.AppDisK/d14 |grep Apache >> /tmp/.AppDisK/Java/jtest
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f1
echo `cat /tmp/.AppDisK/a1 |sed 's/ /|/g'``cat /tmp/.AppDisK/b1``cat /tmp/.AppDisK/d1``cat /tmp/.AppDisK/c1``cat /tmp/.AppDisK/f1` >> /tmp/.AppDisK/op1
if [ `cat /tmp/.AppDisK/op1 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op1;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi
mkdir /tmp/.AppDisK/Java
echo "A#S#D#"IP Address,UserName,MiddleWare,SUDO Name - Discovered Technologies,Language/Program,SUDO Name - Additional Technologies,OperatingSystem~#~
############Tomcat Application######################
if [ `ps aux |grep tomcat |sed '/grep/d' |wc -w` -gt 0 ]
then
mkdir /tmp/.AppDisK/tomcat
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a3
###########user############################
ps aux |grep tomcat |sed '/grep/d' > /tmp/.AppDisK/tomcat/echotom
cat /tmp/.AppDisK/tomcat/echotom |grep tomcat > /dev/null && echo `cat /tmp/.AppDisK/tomcat/echotom | awk {'print $1'} |sort -u`, >> /tmp/.AppDisK/b3 || echo "," >> /tmp/.AppDisK/b3
###########language############################
if `cat /tmp/.AppDisK/tomcat/echotom |grep java > /dev/null`
then
mkdir /tmp/.AppDisK/tomcat/java
echo `cat /tmp/.AppDisK/tomcat/echotom | awk {'print $11'}` >> /tmp/.AppDisK/tomcat/java/jsamply
echo `cat /tmp/.AppDisK/tomcat/java/jsamply |awk {'print $1'}` -version > /tmp/.AppDisK/tomcat/java/jsample && chmod +x /tmp/.AppDisK/tomcat/java/jsample && /tmp/.AppDisK/tomcat/java/jsample >> /tmp/.AppDisK/tomcat/java/jsample.out 2>&1
echo `cat /tmp/.AppDisK/tomcat/java/jsample.out |sed 's/.*jsample.*/Java Home Not Found/g' |awk NR==1`, > /tmp/.AppDisK/c3
echo JAVA, >>/tmp/.AppDisK/c3
else 
echo "," >> /tmp/.AppDisK/c3
fi
###########middleware############################
if `cat /tmp/.AppDisK/tomcat/echotom |grep tomcat > /dev/null`
then
echo `cat /tmp/.AppDisK/tomcat/echotom |grep -o 'Dcatalina.home.*' |cut -f2- -d: |awk {'print$1'}|sed 's/Dcatalina.home=//g'` >> /tmp/.AppDisK/tomcat/tsamply
echo java -cp `cat /tmp/.AppDisK/tomcat/tsamply |awk {'print $1'}`/lib/catalina.jar org.apache.catalina.util.ServerInfo > /tmp/.AppDisK/tomcat/tsample && chmod +x /tmp/.AppDisK/tomcat/tsample && /tmp/.AppDisK/tomcat/tsample >> /tmp/.AppDisK/tomcat/tsample.out 2>&1
sleep 5
echo `cat /tmp/.AppDisK/tomcat/tsample.out | sed 's/.*Info.*/Tomcat Home Not Found/g' |awk NR==1`, > /tmp/.AppDisK/d3
sed -i '$ s/$/Tomcat,/' /tmp/.AppDisK/d3
#echo Tomcat, >>/tmp/.AppDisK/d3
else 
echo "," >> /tmp/.AppDisK/d3
fi
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f3
echo `cat /tmp/.AppDisK/a3 |sed 's/ /|/g'``cat /tmp/.AppDisK/b3``sed 's/.*found/Tomcat Version Not Found/' /tmp/.AppDisK/d3``cat /tmp/.AppDisK/c3``cat /tmp/.AppDisK/f3` >> /tmp/.AppDisK/op3
if [ `cat /tmp/.AppDisK/op3 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op3;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############Web logic Application######################
if [ `ps aux |grep weblogic |sed '/grep/d' |wc -w` -gt 0 ]
then
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a4
###########user############################
mkdir /tmp/.AppDisK/weblogic
ps aux |grep weblogic |sed '/grep/d' > /tmp/.AppDisK/weblogic/wlogicps
cat /tmp/.AppDisK/weblogic/wlogicps |grep weblogic > /dev/null && echo `cat /tmp/.AppDisK/weblogic/wlogicps |grep weblogic | awk {'print $1'} |sort -u`, >> /tmp/.AppDisK/b4 || echo "," >> /tmp/.AppDisK/b4
###########language############################
if `cat /tmp/.AppDisK/weblogic/wlogicps |grep java > /dev/null`
then
mkdir /tmp/.AppDisK/weblogic/java
echo `cat /tmp/.AppDisK/weblogic/wlogicps |awk {'print $11'} |grep java` >> /tmp/.AppDisK/weblogic/java/jsamply
echo `cat /tmp/.AppDisK/weblogic/java/jsamply |awk {'print $1'}` -version > /tmp/.AppDisK/weblogic/java/jsample && chmod +x /tmp/.AppDisK/weblogic/java/jsample && /tmp/.AppDisK/weblogic/java/jsample >> /tmp/.AppDisK/weblogic/java/jsample.out 2>&1
echo `cat /tmp/.AppDisK/weblogic/java/jsample.out |awk NR==1`, > /tmp/.AppDisK/c4
#rm -rf /tmp/.AppDisK/weblogic/java/
echo JAVA, >>/tmp/.AppDisK/c4
else 
echo "," >> /tmp/.AppDisK/c4
fi
###########middleware############################
if `cat /tmp/.AppDisK/weblogic/wlogicps |grep weblogic > /dev/null`
then echo `cat /tmp/.AppDisK/weblogic/java/jsamply |awk {'print $1'}` -cp `cat /tmp/.AppDisK/weblogic/wlogicps |grep -o 'Dwls.home.*'|awk {'print$1'}|sed 's/Dwls.home=//g' |sort -u |awk NR==1`/lib/weblogic.jar weblogic.version >> /tmp/.AppDisK/weblogic/wsamply
chmod +x /tmp/.AppDisK/weblogic/wsamply
echo `/tmp/.AppDisK/weblogic/wsamply |awk NR==2{'print $1,$2,$3,$10'}`, > /tmp/.AppDisK/d4
echo WebLogic AS, >>/tmp/.AppDisK/d4
else echo "," >> /tmp/.AppDisK/d4
fi
cat /tmp/.AppDisK/d4 |grep WebLogic >> /tmp/.AppDisK/Java/jtest
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f4
echo `cat /tmp/.AppDisK/a4 |sed 's/ /|/g'``cat /tmp/.AppDisK/b4``cat /tmp/.AppDisK/d4``cat /tmp/.AppDisK/c4``cat /tmp/.AppDisK/f4` >> /tmp/.AppDisK/op4
if [ `cat /tmp/.AppDisK/op4 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op4;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############jboss Application######################
if [ `ps aux |grep jboss |sed '/grep/d' |wc -w` -gt 0 ]
then
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a2
###########user############################
mkdir /tmp/.AppDisK/jboss
ps aux |grep jboss |sed '/grep/d' > /tmp/.AppDisK/jboss/jbossps && ps aux |grep jboss |sed '/grep/d' >> /tmp/.AppDisK/jboss/jbossps
cat /tmp/.AppDisK/jboss/jbossps |grep jboss > /dev/null && echo `cat /tmp/.AppDisK/jboss/jbossps |grep jboss | awk {'print $1'} |sort -u`, >> /tmp/.AppDisK/b2 || echo "," >> /tmp/.AppDisK/b2
###########language############################
if `cat /tmp/.AppDisK/jboss/jbossps|grep java > /dev/null`
then
mkdir /tmp/.AppDisK/jboss/java
echo `cat /tmp/.AppDisK/jboss/jbossps |awk {'print $11'} |grep java` >> /tmp/.AppDisK/jboss/java/jsamply
echo `cat /tmp/.AppDisK/jboss/java/jsamply |awk {'print $1'}` -version > /tmp/.AppDisK/jboss/java/jsample && chmod +x /tmp/.AppDisK/jboss/java/jsample && /tmp/.AppDisK/jboss/java/jsample >> /tmp/.AppDisK/jboss/java/jsample.out 2>&1
echo `cat /tmp/.AppDisK/jboss/java/jsample.out |awk NR==1`, > /tmp/.AppDisK/c2
echo JAVA, >>/tmp/.AppDisK/c2
else 
echo "," >> /tmp/.AppDisK/c2
fi
###########middleware############################
if [[ `cat /tmp/.AppDisK/jboss/jbossps |grep jboss` > /dev/null || `cat /tmp/.AppDisK/jboss/jbossps |grep jboss` > /dev/null ]]
then

echo `cat /tmp/.AppDisK/jboss/jbossps |grep -o 'Djboss.home.dir.*' |cut -f2- -d: |awk {'print$1'}|sed 's/Djboss.home.dir=//g' |sort -u`/bin/standalone.sh -version >> /tmp/.AppDisK/jboss/wsamply
chmod +x /tmp/.AppDisK/jboss/wsamply && /tmp/.AppDisK/jboss/wsamply >> /tmp/.AppDisK/jboss/wsample.out 2>&1
echo `cat /tmp/.AppDisK/jboss/wsample.out |sed 's/.*standalone.sh.*/Jboss Version Not Found/g' |tail -1 |sed 's/.*more.*/Jboss Version Not Found/g'`
#echo `cat /tmp/.AppDisK/jboss/wsample.out |sed 's/.*standalone.sh.*/Jboss Version Not Found/g' |tail -1`, > /tmp/.AppDisK/d2
cat /tmp/.AppDisK/d2 |grep -i jboss > /dev/null && echo JBoss AS, >>/tmp/.AppDisK/d2 || echo "," >>/tmp/.AppDisK/d2
#echo JBoss AS, >>/tmp/.AppDisK/d2
else 
echo "," >> /tmp/.AppDisK/d2
fi

##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f2
echo `cat /tmp/.AppDisK/a2 |sed 's/ /|/g'``cat /tmp/.AppDisK/b2``sed 's/.*wsamply.*/jboss Version Not Found/' /tmp/.AppDisK/d2``sed 's/.*jsample.*/Java Version Not Found,/' /tmp/.AppDisK/c2``cat /tmp/.AppDisK/f2` >> /tmp/.AppDisK/op2
if [ `cat /tmp/.AppDisK/op2 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op2;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############Wildfly Application######################
if [ `ps aux |grep jboss |sed '/grep/d' |wc -w` -gt 0 ]
then
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a5
###########user############################
mkdir /tmp/.AppDisK/wildfly
ps aux |grep jboss |sed '/grep/d' > /tmp/.AppDisK/wildfly/wildps && ps aux |grep jboss |sed '/grep/d' >> /tmp/.AppDisK/wildfly/wildps
cat /tmp/.AppDisK/wildfly/wildps |grep wildfly > /dev/null && echo `cat /tmp/.AppDisK/wildfly/wildps |grep wildfly | awk {'print $1'} |sort -u`, >> /tmp/.AppDisK/b5 || echo "," >> /tmp/.AppDisK/b5
###########language############################
if `cat /tmp/.AppDisK/wildfly/wildps |grep java > /dev/null`
then
mkdir /tmp/.AppDisK/wildfly/java
echo `cat /tmp/.AppDisK/wildfly/wildps |awk {'print $11'} |grep java` >> /tmp/.AppDisK/wildfly/java/jsamply
echo `cat /tmp/.AppDisK/wildfly/java/jsamply |awk {'print $1'}` -version > /tmp/.AppDisK/wildfly/java/jsample && chmod +x /tmp/.AppDisK/wildfly/java/jsample && /tmp/.AppDisK/wildfly/java/jsample >> /tmp/.AppDisK/wildfly/java/jsample.out 2>&1
echo `cat /tmp/.AppDisK/wildfly/java/jsample.out |awk NR==1`, > /tmp/.AppDisK/c5
echo JAVA, >>/tmp/.AppDisK/c5
else 
echo "," >> /tmp/.AppDisK/c5
fi
###########middleware############################
if `cat /tmp/.AppDisK/wildfly/wildps |grep wildfly > /dev/null`
then
echo `cat /tmp/.AppDisK/wildfly/wildps |grep -o 'Djboss.home.dir.*' |cut -f2- -d: |awk {'print$1'}|sed 's/Djboss.home.dir=//g' |sort -u`/bin/standalone.sh -version >> /tmp/.AppDisK/wildfly/wsamply
chmod +x /tmp/.AppDisK/wildfly/wsamply && /tmp/.AppDisK/wildfly/wsamply >> /tmp/.AppDisK/wildfly/wsample.out 2>&1
echo `cat /tmp/.AppDisK/wildfly/wsample.out |sed 's/.*standalone.sh.*/Wildfly Version Not Found/g' |tail -1`, > /tmp/.AppDisK/d5
sleep 03
cat /tmp/.AppDisK/d5 |grep -i wildfly > /dev/null && echo Wildfly, >>/tmp/.AppDisK/d5 || echo "," >>/tmp/.AppDisK/d5
else 
echo "," >> /tmp/.AppDisK/d5
fi
cat /tmp/.AppDisK/d5 |grep WildFly |sed '/command/'d >> /tmp/.AppDisK/Java/jtest
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f5
echo `cat /tmp/.AppDisK/a5 |sed 's/ /|/g'``cat /tmp/.AppDisK/b5``sed 's/.*wsamply.*/Wildfly Version Not Found,Wildfly,/' /tmp/.AppDisK/d5``sed 's/.*jsample.*/Java Version Not Found,/' /tmp/.AppDisK/c5``cat /tmp/.AppDisK/f5` >> /tmp/.AppDisK/op5
if [ `cat /tmp/.AppDisK/op5 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op5;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############Python Application######################
if [ `ps aux |grep python |sed '/grep/d' |sed '/opsware/d' |sed '/ambari_agent/d' |sed '/resource_monitoring/d' |sed '/\/usr\/libexec\/rhsmd/d' |sed '/\.\/hpssd\.py/d' |sed '/-Es/d' |wc -w` -gt 0 ]
then
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a6
###########user############################
ps aux |grep python |sed '/grep/d' |sed '/opsware/d' |sed '/ambari_agent/d' |sed '/resource_monitoring/d' |sed '/\/usr\/libexec\/rhsmd/d' |sed '/\.\/hpssd\.py/d' |sed '/-Es/d'  > /tmp/.AppDisK/pyt
cat /tmp/.AppDisK/pyt |grep python > /dev/null && echo `cat /tmp/.AppDisK/pyt | awk {'print $1'}`, >> /tmp/.AppDisK/b6 || echo "," >> /tmp/.AppDisK/b6
###########language############################
cat /tmp/.AppDisK/pyt |grep python > /dev/null && echo `cat /tmp/.AppDisK/pyt |grep python | awk {'print $12'}`,, >> /tmp/.AppDisK/c6 || echo ",," >> /tmp/.AppDisK/c6
#cat /tmp/.AppDisK/pyt |grep python > /dev/null && echo "PYTHON," >> /tmp/.AppDisK/c6 || echo "," >> /tmp/.AppDisK/c6
###########middleware############################
cat /tmp/.AppDisK/pyt |grep python > /dev/null && echo "python non-middleware,Python," >> /tmp/.AppDisK/d6 || echo "," >> /tmp/.AppDisK/d6
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f6
echo `cat /tmp/.AppDisK/a6 |sed 's/ /|/g'``cat /tmp/.AppDisK/b6``cat /tmp/.AppDisK/d6``cat /tmp/.AppDisK/c6``cat /tmp/.AppDisK/f6` >> /tmp/.AppDisK/op6
if [ `cat /tmp/.AppDisK/op6 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op6;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############Redis-Server########################
if [ `ps aux |grep redis |sed '/grep/d' |wc -w` -gt 0 ]
then
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a7
###########user############################
top -n 1 -b |grep redis > /dev/null && echo `top -n 1 -b |grep redis |awk NR==1{'print $2'}`,, >> /tmp/.AppDisK/b7 || echo ",," >> /tmp/.AppDisK/b7
#top -n 1 -b |grep redis > /dev/null && echo "REDIS," >> /tmp/.AppDisK/b7 || echo "," >> /tmp/.AppDisK/b7
###########language############################
top -n 1 -b |grep redis > /dev/null && echo "," >> /tmp/.AppDisK/c7 || echo "," >> /tmp/.AppDisK/c7
###########middleware############################
top -n 1 -b |grep redis > /dev/null && echo Redis Server,REDIS, >> /tmp/.AppDisK/d7 || echo "," >> /tmp/.AppDisK/d7
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f7
echo `cat /tmp/.AppDisK/a7 |sed 's/ /|/g'``cat /tmp/.AppDisK/b7``cat /tmp/.AppDisK/d7``cat /tmp/.AppDisK/c7``cat /tmp/.AppDisK/f7` >> /tmp/.AppDisK/op7
if [ `cat /tmp/.AppDisK/op7 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op7;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############elastic Search######################
if [ `ps aux |grep elastic |sed '/grep/d' |wc -w` -gt 0 ]
then
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a8
###########user############################
ps aux |grep elastic |sed '/grep/d' > /tmp/.AppDisK/ela
cat /tmp/.AppDisK/ela |grep elastic > /dev/null && echo `cat /tmp/.AppDisK/ela | awk {'print $1'}`, >> /tmp/.AppDisK/b8 || echo "," >> /tmp/.AppDisK/b8
###########language############################
cat /tmp/.AppDisK/ela |grep elastic > /dev/null && echo elastic,, >> /tmp/.AppDisK/c8 || echo ",," >> /tmp/.AppDisK/c8
###########middleware############################
cat /tmp/.AppDisK/ela |grep elastic > /dev/null && echo "Elastic Search,ELASTIC," >> /tmp/.AppDisK/d8 || echo "," >> /tmp/.AppDisK/d8
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f8
echo `cat /tmp/.AppDisK/a8 |sed 's/ /|/g'``cat /tmp/.AppDisK/b8``cat /tmp/.AppDisK/d8``cat /tmp/.AppDisK/c8``cat /tmp/.AppDisK/f8` >> /tmp/.AppDisK/op8
if [ `cat /tmp/.AppDisK/op8 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op8;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############Docker########################
if [ `ps aux |grep docker |sed '/grep/d' |wc -w` -gt 0 ]
then
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a9
###########user############################
top -n 1 -b |grep docker > /dev/null && echo `top -n 1 -b |grep docker |awk NR==1{'print $2'}`, >> /tmp/.AppDisK/b9 || echo "," >> /tmp/.AppDisK/b9
###########language############################
top -n 1 -b |grep docker > /dev/null && echo `docker ps |awk {'print $2'}`,, >> /tmp/.AppDisK/c9 || echo ",," >> /tmp/.AppDisK/c9
#top -n 1 -b |grep docker > /dev/null && echo "VIRTUALIZATION," >> /tmp/.AppDisK/c9 || echo "," >> /tmp/.AppDisK/c9
###########middleware############################
top -n 1 -b |grep docker > /dev/null && echo Docker non-middleware,DOCKER, >> /tmp/.AppDisK/d9 || echo "," >> /tmp/.AppDisK/d9
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f9
echo `cat /tmp/.AppDisK/a9 |sed 's/ /|/g'``cat /tmp/.AppDisK/b9``cat /tmp/.AppDisK/d9``cat /tmp/.AppDisK/c9``cat /tmp/.AppDisK/f9` >> /tmp/.AppDisK/op9
if [ `cat /tmp/.AppDisK/op9 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op9;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############nginx ######################
if [ `ps aux |grep nginx |sed '/grep/d' |wc -w` -gt 0 ]
then
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a10
###########user############################
ps aux |grep nginx |sed '/grep/d' > /tmp/.AppDisK/ngi
cat /tmp/.AppDisK/ngi |grep nginx > /dev/null && echo `cat /tmp/.AppDisK/ngi | awk {'print $1'}`|sort -u, >> /tmp/.AppDisK/b10 || echo "," >> /tmp/.AppDisK/b10
###########language############################
if [ `netstat -napl |grep nginx |awk {'print $7'} > /dev/null` ];then echo `netstat -napl |grep nginx |awk {'print $7'}`,, >> /tmp/.AppDisK/c10;else echo ",," >> /tmp/.AppDisK/c10;fi
#if [ `netstat -napl |grep nginx |awk {'print $7'} > /dev/null` ];then echo "PROXY LOADBALANCER," >> /tmp/.AppDisK/c10;else echo "," >> /tmp/.AppDisK/c10;fi
#netstat -napl |grep nginx |awk {'print $7'} > /dev/null && echo nginx running `netstat -napl |grep nginx |awk {'print $7'}`, >> /tmp/.AppDisK/c10 || echo "," >> /tmp/.AppDisK/c10
###########middleware############################
if [ `cat /tmp/.AppDisK/ngi |wc -w` -gt 0 > /dev/null ];then echo Nginx Running,NGINX >> /tmp/.AppDisK/d10;else echo "," >> /tmp/.AppDisK/d10;fi
#cat /tmp/.AppDisK/ngi |grep nginx > /dev/null && echo "nginx middleware," >> /tmp/.AppDisK/d10 || echo "," >> /tmp/.AppDisK/d10
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f10
echo `cat /tmp/.AppDisK/a10 |sed 's/ /|/g'``cat /tmp/.AppDisK/b10``cat /tmp/.AppDisK/d10``cat /tmp/.AppDisK/c10``cat /tmp/.AppDisK/f10` >> /tmp/.AppDisK/op10
if [ `cat /tmp/.AppDisK/op10 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op10;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############Node js######################
##########IP Address##########################
#echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a11
###########user############################
#ps aux |grep node.js |sed '/grep/d' |awk {'print$1 ,$11'} |sort -u > /tmp/.AppDisK/node
#if `cat /tmp/.AppDisK/node > /dev/null`;then echo `cat /tmp/.AppDisK/node |awk {'print$1'}`, >> /tmp/.AppDisK/b11;else echo "," >> /tmp/.AppDisK/b11;fi
###########language############################
#if `cat /tmp/.AppDisK/node > /dev/null`;then echo `cat /tmp/.AppDisK/node |awk {'print$2'}`,, >> /tmp/.AppDisK/c11;else echo ",," >> /tmp/.AppDisK/c11;fi
###########middleware############################
#if [ `cat /tmp/.AppDisK/node |wc -w` -gt 0 ];then echo "Node.js Non-Middleware", >> /tmp/.AppDisK/d11;else echo "," >> /tmp/.AppDisK/d11;fi
##########Application Detection###############
##########Operating System####################
#echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f11
#echo `cat /tmp/.AppDisK/a11``cat /tmp/.AppDisK/b11``cat /tmp/.AppDisK/c11``cat /tmp/.AppDisK/d11``cat /tmp/.AppDisK/f11` >> /tmp/.AppDisK/op11

############OHS js######################
if [ `ps aux |grep httpd.worker |sed '/grep/d' |sort -u |wc -w` -gt 0 ]
then
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a12
###########user############################
mkdir /tmp/.AppDisK/OHS
ps aux |grep httpd.worker |sed '/grep/d' |sort -u > /tmp/.AppDisK/OHS/OHS
if `cat /tmp/.AppDisK/OHS/OHS |grep httpd.worker > /dev/null` ;then echo `cat /tmp/.AppDisK/OHS/OHS |awk {'print$1'}`, >> /tmp/.AppDisK/b12;else echo "," >> /tmp/.AppDisK/b12;fi
###########language############################
if `cat /tmp/.AppDisK/OHS/OHS |grep httpd.worker > /dev/null` ;then echo "OHS,," >> /tmp/.AppDisK/c12;else echo ",," >> /tmp/.AppDisK/c12;fi
###########middleware############################
if `cat /tmp/.AppDisK/c12 |grep OHS > /dev/null` ;then echo Oracle-HTTP-Server,ORACLE HTTP SERVER, >> /tmp/.AppDisK/d12;else echo "," >> /tmp/.AppDisK/d12;fi
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f12
echo `cat /tmp/.AppDisK/a12 |sed 's/ /|/g'``cat /tmp/.AppDisK/b12``cat /tmp/.AppDisK/d12``cat /tmp/.AppDisK/c12``cat /tmp/.AppDisK/f12` >> /tmp/.AppDisK/op12
if [ `cat /tmp/.AppDisK/op12 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op12;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############ActiveMq Application######################
if [ `ps aux |grep activemq |sed '/grep/d' |wc -w` -gt 0 ]
then
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a13
###########user############################
mkdir /tmp/.AppDisK/activemq
ps aux |grep activemq |sed '/grep/d' > /tmp/.AppDisK/activemq/mqps
cat /tmp/.AppDisK/activemq/mqps|grep activemq > /dev/null && echo `cat /tmp/.AppDisK/activemq/mqps |grep activemq | awk {'print $1'} |sort -u`, >> /tmp/.AppDisK/b13 || echo "," >> /tmp/.AppDisK/b13
###########language############################
if [ `cat /tmp/.AppDisK/activemq/mqps |wc -w` -gt 0 ]
then
mkdir /tmp/.AppDisK/activemq/java
echo `cat /tmp/.AppDisK/activemq/mqps |awk {'print $11'} |grep java` >> /tmp/.AppDisK/activemq/java/jsamply
echo `cat /tmp/.AppDisK/activemq/java/jsamply |awk {'print $1'}` -version > /tmp/.AppDisK/activemq/java/jsample && chmod +x /tmp/.AppDisK/activemq/java/jsample && /tmp/.AppDisK/activemq/java/jsample >> /tmp/.AppDisK/activemq/java/jsample.out 2>&1
echo `cat /tmp/.AppDisK/activemq/java/jsample.out |awk NR==1`, > /tmp/.AppDisK/c13
echo JAVA, >>/tmp/.AppDisK/c13
rm -rf /tmp/.AppDisK/activemq/java/
else 
echo "," >> /tmp/.AppDisK/c13
fi
###########middleware############################
sleep 02
if [ `cat /tmp/.AppDisK/activemq/mqps |wc -w` -gt 0 ]
then 
echo `locate activemq.jar` |sed 's/activemq.jar/activemq --version/g' > /tmp/.AppDisK/activemq/mq
chmod +x /tmp/.AppDisK/activemq/mq 
/tmp/.AppDisK/activemq/mq >> /tmp/.AppDisK/activemq/mqsample.out
echo `cat /tmp/.AppDisK/activemq/mqsample.out |grep ActiveMQ`,>> /tmp/.AppDisK/d13 
sed -i '$ s/$/ACTIVEMQ,/' /tmp/.AppDisK/d13
#echo ACTIVEMQ, >>/tmp/.AppDisK/d13
else 
echo "," >> /tmp/.AppDisK/d13
fi
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f13
echo `cat /tmp/.AppDisK/a13 |sed 's/ /|/g'``cat /tmp/.AppDisK/b13``cat /tmp/.AppDisK/d13``cat /tmp/.AppDisK/c13``cat /tmp/.AppDisK/f13` |sed 's/",,/",ActiveMq Version Not Found,/g' >> /tmp/.AppDisK/op13
if [ `cat /tmp/.AppDisK/op13 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op13;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############Apache Application######################
if [ `ps aux |grep httpd |sed '/grep/d' |sed '/httpd.worker/'d |wc -w` -gt 0 ]
then
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a14
###########user############################
mkdir /tmp/.AppDisK/apache
###HAS TO REPLACE WITH THIS CODE BELOW#######
ps aux |grep httpd |sed '/grep/d' |sed '/httpd.worker/'d > /tmp/.AppDisK/apache/mqps
cat /tmp/.AppDisK/apache/mqps|grep httpd > /dev/null && echo `cat /tmp/.AppDisK/apache/mqps |grep httpd | awk {'print $1'} |sort -u`, >> /tmp/.AppDisK/b14 || echo "," >> /tmp/.AppDisK/b14
###########language############################
if `cat /tmp/.AppDisK/apache/mqps |grep httpd > /dev/null`
then echo `cat /tmp/.AppDisK/apache/mqps |sort -u |awk NR==1{'print$11'} |grep -o '.*/bin/'`apachectl -v >> /tmp/.AppDisK/apache/wsamply
chmod +x /tmp/.AppDisK/apache/wsamply
echo `/tmp/.AppDisK/apache/wsamply |awk NR==1`, > /tmp/.AppDisK/c14
echo "," >>/tmp/.AppDisK/c14
else echo "," >> /tmp/.AppDisK/c14
fi
###########middleware############################
if `cat /tmp/.AppDisK/apache/mqps |grep httpd > /dev/null`
then 
echo "Apache HTTP WebServer,Apache HTTP WebServer," > /tmp/.AppDisK/d14 
else 
echo "," >> /tmp/.AppDisK/d14
fi
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f14
echo `cat /tmp/.AppDisK/a14 |sed 's/ /|/g'``cat /tmp/.AppDisK/b14``cat /tmp/.AppDisK/d14``cat /tmp/.AppDisK/c14``cat /tmp/.AppDisK/f14` >> /tmp/.AppDisK/op14
if [ `cat /tmp/.AppDisK/op14 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op14;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############jsnode Application######################
if [ `ps aux |grep node |sed '/grep/d' |awk {'print$11'} |sort -u |wc -w` -gt 0 ]
then
mkdir /tmp/.AppDisK/jsnode
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a15
###########user############################
ps aux |grep node |sed '/grep/d' |awk {'print$11'} |sort -u > /tmp/.AppDisK/jsnode/jsnodeps
cat /tmp/.AppDisK/jsnode/jsnodeps |grep node > /dev/null && echo `cat /tmp/.AppDisK/jsnode/jsnodeps | awk {'print $1'} |sort -u`, >> /tmp/.AppDisK/b15 || echo "," >> /tmp/.AppDisK/b15
###########language############################
echo ",," >> /tmp/.AppDisK/c15
###########middleware############################
if `cat /tmp/.AppDisK/jsnode/jsnodeps |grep node > /dev/null`
then
echo `/usr/local/nodejs/bin/node --version` >> /tmp/.AppDisK/jsnode/tsamply
echo nodejs `cat /tmp/.AppDisK/jsnode/tsamply`, > /tmp/.AppDisK/d15
#echo NODEJS >>/tmp/.AppDisK/d15
else 
echo "," >> /tmp/.AppDisK/d15
fi
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f15
echo `cat /tmp/.AppDisK/a15 |sed 's/ /|/g'``cat /tmp/.AppDisK/b15``sed 's/.*tsample.*/node Version Not Found,/' /tmp/.AppDisK/d15``cat /tmp/.AppDisK/c15``cat /tmp/.AppDisK/f15` >> /tmp/.AppDisK/op15
if [ `cat /tmp/.AppDisK/op15 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op15;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############Oracle Application######################
if [ `ps aux |grep oracle |sed '/grep/d' |wc -w` -gt 0 ]
then
mkdir /tmp/.AppDisK/orps
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a16
###########user############################
ps aux |grep oracle |sed '/grep/d' > /tmp/.AppDisK/orps/oraps
cat /tmp/.AppDisK/orps/oraps |grep oracle > /dev/null && echo `cat /tmp/.AppDisK/orps/oraps | awk {'print $1'} |sort -u`, >> /tmp/.AppDisK/b16 || echo "," >> /tmp/.AppDisK/b16
###########language############################
if `cat /tmp/.AppDisK/orps/oraps |grep java > /dev/null`
then
mkdir /tmp/.AppDisK/orps/java
echo `cat /tmp/.AppDisK/orps/oraps | awk {'print $11'} |grep /bin/java` >> /tmp/.AppDisK/orps/java/jsamply
echo `cat /tmp/.AppDisK/orps/java/jsamply |awk {'print $1'}` -version > /tmp/.AppDisK/orps/java/jsample && chmod +x /tmp/.AppDisK/orps/java/jsample && /tmp/.AppDisK/orps/java/jsample >> /tmp/.AppDisK/orps/java/jsample.out 2>&1
echo `cat /tmp/.AppDisK/orps/java/jsample.out |awk NR==1`, > /tmp/.AppDisK/c16
echo JAVA, >>/tmp/.AppDisK/c16
##rm -rf /tmp/.AppDisK/orps/java/
else 
echo "," >> /tmp/.AppDisK/c16
fi
###########middleware############################
if `cat /tmp/.AppDisK/orps/oraps |grep oracle > /dev/null`
then
echo Oracle,Oracle DB, >> /tmp/.AppDisK/d16
else 
echo "," >> /tmp/.AppDisK/d16
fi
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f16
echo `cat /tmp/.AppDisK/a16 |sed 's/ /|/g'``cat /tmp/.AppDisK/b16``cat /tmp/.AppDisK/d16``cat /tmp/.AppDisK/c16``cat /tmp/.AppDisK/f16` >> /tmp/.AppDisK/op16
if [ `cat /tmp/.AppDisK/op16 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op16;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############Websphere Application######################
if [ `ps aux |grep ibm |sed '/grep/d' |wc -w` -gt 0 ]
then
mkdir /tmp/.AppDisK/ibmps
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a17
###########user############################
ps aux |grep ibm |sed '/grep/d' > /tmp/.AppDisK/ibmps/wsphere
cat /tmp/.AppDisK/ibmps/wsphere |grep ibm > /dev/null && echo `cat /tmp/.AppDisK/ibmps/wsphere | awk {'print $1'} |sort -u`, >> /tmp/.AppDisK/b17 || echo "," >> /tmp/.AppDisK/b17
###########language############################
if `cat /tmp/.AppDisK/ibmps/wsphere |grep java > /dev/null`
then
mkdir /tmp/.AppDisK/ibmps/java
echo `cat /tmp/.AppDisK/ibmps/wsphere | awk {'print $11'} |grep /bin/java` >> /tmp/.AppDisK/ibmps/java/jsamply
echo `cat /tmp/.AppDisK/ibmps/java/jsamply |awk {'print $1'}` -version > /tmp/.AppDisK/ibmps/java/jsample && chmod +x /tmp/.AppDisK/ibmps/java/jsample && /tmp/.AppDisK/ibmps/java/jsample >> /tmp/.AppDisK/ibmps/java/jsample.out 2>&1
echo `cat /tmp/.AppDisK/ibmps/java/jsample.out |awk NR==1`, > /tmp/.AppDisK/c17
echo JAVA, >>/tmp/.AppDisK/c17
##rm -rf /tmp/.AppDisK/ibmps/java/
else 
echo "," >> /tmp/.AppDisK/c17
fi
###########middleware############################
if `cat /tmp/.AppDisK/ibmps/wsphere |grep ibm > /dev/null`
then
echo WebSphere,WebSphere AS, >> /tmp/.AppDisK/d17
else 
echo "," >> /tmp/.AppDisK/d17
fi
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f17
echo `cat /tmp/.AppDisK/a17 |sed 's/ /|/g'``cat /tmp/.AppDisK/b17``sed 's/.*tsample.*/Tomcat Version Not Found,/' /tmp/.AppDisK/d17``cat /tmp/.AppDisK/c17``cat /tmp/.AppDisK/f17` >> /tmp/.AppDisK/op17
if [ `cat /tmp/.AppDisK/op17 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op17;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############MySql Application######################
if [ `ps aux |grep mysql |sed '/grep/d' |wc -w` -gt 0 ]
then
mkdir /tmp/.AppDisK/mysqlps
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a18
###########user############################
ps aux |grep mysql |sed '/grep/d' > /tmp/.AppDisK/mysqlps/misql
cat /tmp/.AppDisK/mysqlps/misql |grep mysql > /dev/null && echo `cat /tmp/.AppDisK/mysqlps/misql | awk {'print $1'} |sort -u`, >> /tmp/.AppDisK/b18 || echo "," >> /tmp/.AppDisK/b18
###########language############################
if `cat /tmp/.AppDisK/mysqlps/misql |grep mysql > /dev/null`
then
echo Mysql Database,, > /tmp/.AppDisK/c18
else 
echo "," >> /tmp/.AppDisK/c18
fi
###########middleware############################
if `cat /tmp/.AppDisK/mysqlps/misql |grep mysql > /dev/null`
then
echo MySQL,MySQL DB, >> /tmp/.AppDisK/d18
else 
echo "," >> /tmp/.AppDisK/d18
fi
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f18
echo `cat /tmp/.AppDisK/a18 |sed 's/ /|/g'``cat /tmp/.AppDisK/b18``sed 's/.*tsample.*/Tomcat Version Not Found,/' /tmp/.AppDisK/d18``cat /tmp/.AppDisK/c18``cat /tmp/.AppDisK/f18` >> /tmp/.AppDisK/op18
if [ `cat /tmp/.AppDisK/op18 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op18;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############Postgres Application######################
if [ `ps aux |grep postgres |sed '/grep/d' |wc -w` -gt 0 ]
then
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a19
###########user############################
mkdir /tmp/.AppDisK/postgres
ps aux |grep postgres |sed '/grep/d' > /tmp/.AppDisK/postgres/mqps
cat /tmp/.AppDisK/postgres/mqps|grep postgres > /dev/null && echo `cat /tmp/.AppDisK/postgres/mqps |grep postgres | awk {'print $1'} |sort -u`, >> /tmp/.AppDisK/b19 || echo "," >> /tmp/.AppDisK/b19
###########language############################
if [ `cat /tmp/.AppDisK/postgres/mqps |wc -w` -gt 0 ]
then
echo Postgres Database,, > /tmp/.AppDisK/c19
else 
echo "," >> /tmp/.AppDisK/c19
fi
###########middleware############################
if [ `cat /tmp/.AppDisK/postgres/mqps |wc -w` -gt 0 ]
then 
echo `ps aux |grep postgres |grep /bin |awk NR==1 |awk {'print $11'}` -V > /tmp/.AppDisK/postgres/po
chmod +x /tmp/.AppDisK/postgres/po
/tmp/.AppDisK/postgres/po >> /tmp/.AppDisK/postgres/posample.out
sleep 10
echo `cat /tmp/.AppDisK/postgres/posample.out |grep postgres`,>> /tmp/.AppDisK/d19 
echo PostgreSQL, >>/tmp/.AppDisK/d19
else 
echo "," >> /tmp/.AppDisK/d19
fi
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f19
echo `cat /tmp/.AppDisK/a19 |sed 's/ /|/g'``cat /tmp/.AppDisK/b19``cat /tmp/.AppDisK/d19``cat /tmp/.AppDisK/c19``cat /tmp/.AppDisK/f19` |sed 's/",,/",Postgre Version Not Found,/g' >> /tmp/.AppDisK/op19
if [ `cat /tmp/.AppDisK/op19 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op19;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############HAProxy Application######################
if [ `ps aux |grep haproxyweb |sed '/grep/d' |wc -w` -gt 0 ]
then
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a20
###########user############################
mkdir /tmp/.AppDisK/haproxyweb
ps aux |grep haproxyweb |sed '/grep/d' > /tmp/.AppDisK/haproxyweb/mqps
cat /tmp/.AppDisK/haproxyweb/mqps|grep haproxyweb > /dev/null && echo `cat /tmp/.AppDisK/haproxyweb/mqps |grep haproxyweb | awk {'print $1'} |sort -u`, >> /tmp/.AppDisK/b20 || echo "," >> /tmp/.AppDisK/b20
###########language############################
if [ `cat /tmp/.AppDisK/haproxyweb/mqps |wc -w` -gt 0 ]
then
echo HAProxy,, > /tmp/.AppDisK/c20
else 
echo ",," >> /tmp/.AppDisK/c20
fi
###########middleware############################
if [ `cat /tmp/.AppDisK/haproxyweb/mqps |wc -w` -gt 0 ]
then 
echo `cat /tmp/.AppDisK/haproxyweb/mqps |awk {'print $11'}` -v > /tmp/.AppDisK/haproxyweb/po
chmod +x /tmp/.AppDisK/haproxyweb/po
/tmp/.AppDisK/haproxyweb/po >> /tmp/.AppDisK/haproxyweb/posample.out
echo `cat /tmp/.AppDisK/haproxyweb/posample.out |awk NR==1`,>> /tmp/.AppDisK/d20 
echo HA Proxy, >>/tmp/.AppDisK/d20
else 
echo "," >> /tmp/.AppDisK/d20
fi
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f20
echo `cat /tmp/.AppDisK/a20 |sed 's/ /|/g'``cat /tmp/.AppDisK/b20``cat /tmp/.AppDisK/d20``cat /tmp/.AppDisK/c20``cat /tmp/.AppDisK/f20` |sed 's/",,/",HAProxy Version Not Found,/g' >> /tmp/.AppDisK/op20
if [ `cat /tmp/.AppDisK/op20 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op20;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############Cassandra Application######################
if [ `ps aux |grep cassandra |sed '/grep/d' |wc -w` -gt 0 ]
then
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a21
###########user############################
mkdir /tmp/.AppDisK/cassandra
ps aux |grep cassandra |sed '/grep/d' > /tmp/.AppDisK/cassandra/mqps
cat /tmp/.AppDisK/cassandra/mqps|grep cassandra > /dev/null && echo `cat /tmp/.AppDisK/cassandra/mqps |grep cassandra | awk {'print $1'} |sort -u`, >> /tmp/.AppDisK/b21 || echo "," >> /tmp/.AppDisK/b21
###########language############################
if [ `cat /tmp/.AppDisK/cassandra/mqps |wc -w` -gt 0 ]
then
echo Database,, > /tmp/.AppDisK/c21
else 
echo ",," >> /tmp/.AppDisK/c21
fi
###########middleware############################
if [ `cat /tmp/.AppDisK/cassandra/mqps |wc -w` -gt 0 ]
then 
echo Cassandra,CASSANDRA DB, > /tmp/.AppDisK/d21
else 
echo "," >> /tmp/.AppDisK/d21
fi
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f21
echo `cat /tmp/.AppDisK/a21 |sed 's/ /|/g'``cat /tmp/.AppDisK/b21``cat /tmp/.AppDisK/d21``cat /tmp/.AppDisK/c21``cat /tmp/.AppDisK/f21` |sed 's/",,/",Cassandra Version Not Found,/g' >> /tmp/.AppDisK/op21
if [ `cat /tmp/.AppDisK/op21 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op21;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############Memcache Application######################
if [ `ps aux |grep memcache |sed '/grep/d' |wc -w` -gt 0 ]
then
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a22
###########user############################
mkdir /tmp/.AppDisK/memcache
ps aux |grep memcache |sed '/grep/d' > /tmp/.AppDisK/memcache/mqps
cat /tmp/.AppDisK/memcache/mqps|grep memcache > /dev/null && echo `cat /tmp/.AppDisK/memcache/mqps |grep memcache | awk {'print $1'} |sort -u`, >> /tmp/.AppDisK/b22 || echo "," >> /tmp/.AppDisK/b22
###########language############################
if [ `cat /tmp/.AppDisK/memcache/mqps |wc -w` -gt 0 ]
then
echo Cache,, > /tmp/.AppDisK/c22
else 
echo ",," >> /tmp/.AppDisK/c22
fi
###########middleware############################
if [ `cat /tmp/.AppDisK/memcache/mqps |wc -w` -gt 0 ]
then 
echo Memcache,MEMCACHE, > /tmp/.AppDisK/d22
else 
echo "," >> /tmp/.AppDisK/d22
fi
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f22
echo `cat /tmp/.AppDisK/a22 |sed 's/ /|/g'``cat /tmp/.AppDisK/b22``cat /tmp/.AppDisK/d22``cat /tmp/.AppDisK/c22``cat /tmp/.AppDisK/f22` |sed 's/",,/",Cassandra Version Not Found,/g' >> /tmp/.AppDisK/op22
if [ `cat /tmp/.AppDisK/op22 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op22;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############Rabitmq Application######################
if [ `ps aux |grep rabbitmq |sed '/grep/d' |wc -w` -gt 0 ]
then
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a23
###########user############################
mkdir /tmp/.AppDisK/rabbitmq
ps aux |grep rabbitmq |sed '/grep/d' > /tmp/.AppDisK/rabbitmq/mqps
cat /tmp/.AppDisK/rabbitmq/mqps|grep rabbitmq > /dev/null && echo `cat /tmp/.AppDisK/rabbitmq/mqps |grep rabbitmq | awk {'print $1'} |sort -u`, >> /tmp/.AppDisK/b23 || echo "," >> /tmp/.AppDisK/b23
###########language############################
if [ `cat /tmp/.AppDisK/rabbitmq/mqps |wc -w` -gt 0 ]
then
echo database,, > /tmp/.AppDisK/c23
else 
echo ",," >> /tmp/.AppDisK/c23
fi
###########middleware############################
if [ `cat /tmp/.AppDisK/rabbitmq/mqps |wc -w` -gt 0 ]
then 
echo rabbitmq,RABBITMQ, > /tmp/.AppDisK/d23
else 
echo "," >> /tmp/.AppDisK/d23
fi
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f23
echo `cat /tmp/.AppDisK/a23 |sed 's/ /|/g'``cat /tmp/.AppDisK/b23``cat /tmp/.AppDisK/d23``cat /tmp/.AppDisK/c23``cat /tmp/.AppDisK/f23` |sed 's/",,/",Cassandra Version Not Found,/g' >> /tmp/.AppDisK/op23
if [ `cat /tmp/.AppDisK/op23 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op23;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############TIBCO ESB Application######################
if [ `ps aux |grep bwengine |sed '/grep/d' |wc -w` -gt 0 ]
then
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a24
###########user############################
mkdir /tmp/.AppDisK/bwengine
ps aux |grep bwengine |sed '/grep/d' > /tmp/.AppDisK/bwengine/mqps
cat /tmp/.AppDisK/bwengine/mqps|grep bwengine > /dev/null && echo `cat /tmp/.AppDisK/bwengine/mqps |grep bwengine | awk {'print $1'} |sort -u`, >> /tmp/.AppDisK/b24 || echo "," >> /tmp/.AppDisK/b24
###########language############################
if [ `cat /tmp/.AppDisK/bwengine/mqps |wc -w` -gt 0 ]
then
echo TIBCO ESB,, > /tmp/.AppDisK/c24
else 
echo ",," >> /tmp/.AppDisK/c24
fi
###########middleware############################
if [ `cat /tmp/.AppDisK/bwengine/mqps |wc -w` -gt 0 ]
then 
echo BusinessWorks BW,TIBCO Business Works Engine, > /tmp/.AppDisK/d24
else 
echo "," >> /tmp/.AppDisK/d24
fi
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f24
echo `cat /tmp/.AppDisK/a24 |sed 's/ /|/g'``cat /tmp/.AppDisK/b24``cat /tmp/.AppDisK/d24``cat /tmp/.AppDisK/c24``cat /tmp/.AppDisK/f24` |sed 's/",,/",TIBCO Version Not Found,/g' >> /tmp/.AppDisK/op24
if [ `cat /tmp/.AppDisK/op24 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op24;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############TIBCO ESB DB Adapter Application######################
if [ `ps aux |grep adadb |sed '/grep/d' |wc -w` -gt 0 ]
then
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a25
###########user############################
mkdir /tmp/.AppDisK/adadb
ps aux |grep adadb |sed '/grep/d' > /tmp/.AppDisK/adadb/mqps
cat /tmp/.AppDisK/adadb/mqps|grep adadb > /dev/null && echo `cat /tmp/.AppDisK/adadb/mqps |grep adadb | awk {'print $1'} |sort -u`, >> /tmp/.AppDisK/b25 || echo "," >> /tmp/.AppDisK/b25
###########language############################
if [ `cat /tmp/.AppDisK/adadb/mqps |wc -w` -gt 0 ]
then
echo TIBCO ESB,, > /tmp/.AppDisK/c25
else 
echo ",," >> /tmp/.AppDisK/c25
fi
###########middleware############################
if [ `cat /tmp/.AppDisK/adadb/mqps |wc -w` -gt 0 ]
then 
echo DB Adapter,Tibco Adapter, > /tmp/.AppDisK/d25
else 
echo "," >> /tmp/.AppDisK/d25
fi
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f25
echo `cat /tmp/.AppDisK/a25 |sed 's/ /|/g'``cat /tmp/.AppDisK/b25``cat /tmp/.AppDisK/d25``cat /tmp/.AppDisK/c25``cat /tmp/.AppDisK/f25` |sed 's/",,/",TIBCO Version Not Found,/g' >> /tmp/.AppDisK/op25
if [ `cat /tmp/.AppDisK/op25 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op25;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############TIBCO ESB DB Adapter Application######################
if [ `ps aux |grep adr3 |sed '/grep/d' |wc -w` -gt 0 ]
then
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a26
###########user############################
mkdir /tmp/.AppDisK/adr3
ps aux |grep adr3 |sed '/grep/d' > /tmp/.AppDisK/adr3/mqps
cat /tmp/.AppDisK/adr3/mqps|grep adr3 > /dev/null && echo `cat /tmp/.AppDisK/adr3/mqps |grep adr3 | awk {'print $1'} |sort -u`, >> /tmp/.AppDisK/b26 || echo "," >> /tmp/.AppDisK/b26
###########language############################
if [ `cat /tmp/.AppDisK/adr3/mqps |wc -w` -gt 0 ]
then
echo TIBCO ESB,, > /tmp/.AppDisK/c26
else 
echo ",," >> /tmp/.AppDisK/c26
fi
###########middleware############################
if [ `cat /tmp/.AppDisK/adr3/mqps |wc -w` -gt 0 ]
then 
echo "Adapter for SAP (R/3 Adapter),SAP R/3 Adapter," > /tmp/.AppDisK/d26
else 
echo "," >> /tmp/.AppDisK/d26
fi
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f26
echo `cat /tmp/.AppDisK/a26 |sed 's/ /|/g'``cat /tmp/.AppDisK/b26``cat /tmp/.AppDisK/d26``cat /tmp/.AppDisK/c26``cat /tmp/.AppDisK/f26` |sed 's/",,/",TIBCO Version Not Found,/g' >> /tmp/.AppDisK/op26
if [ `cat /tmp/.AppDisK/op26 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op26;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############TIBCO ESB Admin Application######################
if [ `ps aux |grep tibcoadmin |sed '/grep/d' |wc -w` -gt 0 ]
then
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a27
###########user############################
mkdir /tmp/.AppDisK/tibcoadmin
ps aux |grep tibcoadmin |sed '/grep/d' > /tmp/.AppDisK/tibcoadmin/mqps
cat /tmp/.AppDisK/tibcoadmin/mqps|grep tibcoadmin > /dev/null && echo `cat /tmp/.AppDisK/tibcoadmin/mqps |grep tibcoadmin | awk {'print $1'} |sort -u`, >> /tmp/.AppDisK/b27 || echo "," >> /tmp/.AppDisK/b27
###########language############################
if [ `cat /tmp/.AppDisK/tibcoadmin/mqps |wc -w` -gt 0 ]
then
echo TIBCO ESB,, > /tmp/.AppDisK/c27
else 
echo ",," >> /tmp/.AppDisK/c27
fi
###########middleware############################
if [ `cat /tmp/.AppDisK/tibcoadmin/mqps |wc -w` -gt 0 ]
then 
echo TIBCO Administrator,TIBCO_Admin, > /tmp/.AppDisK/d27
else 
echo "," >> /tmp/.AppDisK/d27
fi
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f27
echo `cat /tmp/.AppDisK/a27 |sed 's/ /|/g'``cat /tmp/.AppDisK/b26``cat /tmp/.AppDisK/d27``cat /tmp/.AppDisK/c27``cat /tmp/.AppDisK/f27` |sed 's/",,/",TIBCO Version Not Found,/g' >> /tmp/.AppDisK/op27
if [ `cat /tmp/.AppDisK/op27 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op27;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############TIBCO ESB hawk Application######################
if [ `ps aux |grep hawkagent |sed '/grep/d' |wc -w` -gt 0 ]
then
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a32
###########user############################
mkdir /tmp/.AppDisK/hawkagent
ps aux |grep hawkagent |sed '/grep/d' > /tmp/.AppDisK/hawkagent/mqps
cat /tmp/.AppDisK/hawkagent/mqps|grep hawkagent > /dev/null && echo `cat /tmp/.AppDisK/hawkagent/mqps |grep hawkagent | awk {'print $1'} |sort -u`, >> /tmp/.AppDisK/b32 || echo "," >> /tmp/.AppDisK/b32
###########language############################
if [ `cat /tmp/.AppDisK/hawkagent/mqps |wc -w` -gt 0 ]
then
echo TIBCO ESB,, > /tmp/.AppDisK/c32
else 
echo ",," >> /tmp/.AppDisK/c32
fi
###########middleware############################
if [ `cat /tmp/.AppDisK/hawkagent/mqps |wc -w` -gt 0 ]
then 
echo TIBCO Hawk,TIBCO Hawk, > /tmp/.AppDisK/d32
else 
echo "," >> /tmp/.AppDisK/d32
fi
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f32
echo `cat /tmp/.AppDisK/a32 |sed 's/ /|/g'``cat /tmp/.AppDisK/b32``cat /tmp/.AppDisK/d32``cat /tmp/.AppDisK/c32``cat /tmp/.AppDisK/f32` |sed 's/",,/",TIBCO Version Not Found,/g' >> /tmp/.AppDisK/op32
if [ `cat /tmp/.AppDisK/op32 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op32;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############TIBCO ESB Enterprise Message EMS Application######################
##########IP Address##########################
if [ `ps aux |grep tibems |sed '/grep/d' |wc -w` -gt 0 ]
then
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a28
###########user############################
mkdir /tmp/.AppDisK/tibems
ps aux |grep tibems |sed '/grep/d' > /tmp/.AppDisK/tibems/mqps
cat /tmp/.AppDisK/tibems/mqps|grep tibems > /dev/null && echo `cat /tmp/.AppDisK/tibems/mqps |grep tibems | awk {'print $1'} |sort -u`, >> /tmp/.AppDisK/b28 || echo "," >> /tmp/.AppDisK/b28
###########language############################
if [ `cat /tmp/.AppDisK/tibems/mqps |wc -w` -gt 0 ]
then
echo TIBCO ESB,, > /tmp/.AppDisK/c28
else 
echo ",," >> /tmp/.AppDisK/c28
fi
###########middleware############################
if [ `cat /tmp/.AppDisK/tibems/mqps |wc -w` -gt 0 ]
then 
echo "TIBCO Enterprise Message (EMS),TIBCO EMS", > /tmp/.AppDisK/d28

else 
echo "," >> /tmp/.AppDisK/d28
fi
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f28
echo `cat /tmp/.AppDisK/a28 |sed 's/ /|/g'``cat /tmp/.AppDisK/b28``cat /tmp/.AppDisK/d28``cat /tmp/.AppDisK/c28``cat /tmp/.AppDisK/f28` |sed 's/",,/",TIBCO Version Not Found,/g' >> /tmp/.AppDisK/op28
if [ `cat /tmp/.AppDisK/op28 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op28;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############TIBCO ESB be-engine Application######################
if [ `ps aux |grep be-engine |sed '/grep/d' |wc -w` -gt 0 ]
then
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a29
###########user############################
mkdir /tmp/.AppDisK/be-engine
ps aux |grep be-engine |sed '/grep/d' > /tmp/.AppDisK/be-engine/mqps
cat /tmp/.AppDisK/be-engine/mqps|grep be-engine > /dev/null && echo `cat /tmp/.AppDisK/be-engine/mqps |grep be-engine | awk {'print $1'} |sort -u`, >> /tmp/.AppDisK/b29 || echo "," >> /tmp/.AppDisK/b29
###########language############################
if [ `cat /tmp/.AppDisK/be-engine/mqps |wc -w` -gt 0 ]
then
echo TIBCO BE,, > /tmp/.AppDisK/c29
else 
echo ",," >> /tmp/.AppDisK/c29
fi
###########middleware############################
if [ `cat /tmp/.AppDisK/be-engine/mqps |wc -w` -gt 0 ]
then 
echo "TIBCO Business Events,TIBCO BE", > /tmp/.AppDisK/d29
else 
echo "," >> /tmp/.AppDisK/d29
fi
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f29
echo `cat /tmp/.AppDisK/a29 |sed 's/ /|/g'``cat /tmp/.AppDisK/b29``cat /tmp/.AppDisK/d29``cat /tmp/.AppDisK/c29``cat /tmp/.AppDisK/f29` |sed 's/",,/",TIBCO Version Not Found,/g' >> /tmp/.AppDisK/op29
if [ `cat /tmp/.AppDisK/op29 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op29;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############TIBCO AS Seed Application######################
if [ `ps aux |grep Seed |sed '/grep/d' |wc -w` -gt 0 ]
then
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a30
###########user############################
mkdir /tmp/.AppDisK/Seed
ps aux |grep Seed |sed '/grep/d' > /tmp/.AppDisK/Seed/mqps
cat /tmp/.AppDisK/Seed/mqps|grep Seed > /dev/null && echo `cat /tmp/.AppDisK/Seed/mqps |grep Seed | awk {'print $1'} |sort -u`, >> /tmp/.AppDisK/b30 || echo "," >> /tmp/.AppDisK/b30
###########language############################
if [ `cat /tmp/.AppDisK/Seed/mqps |wc -w` -gt 0 ]
then
echo TIBCO AS,, > /tmp/.AppDisK/c30
else 
echo ",," >> /tmp/.AppDisK/c30
fi
###########middleware############################
if [ `cat /tmp/.AppDisK/Seed/mqps |wc -w` -gt 0 ]
then 
echo "TIBCO Active Space,TIBCO Active Space", > /tmp/.AppDisK/d30
else 
echo "," >> /tmp/.AppDisK/d30
fi
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f30
echo `cat /tmp/.AppDisK/a30 |sed 's/ /|/g'``cat /tmp/.AppDisK/b30``cat /tmp/.AppDisK/d30``cat /tmp/.AppDisK/c30``cat /tmp/.AppDisK/f30` |sed 's/",,/",TIBCO Version Not Found,/g' >> /tmp/.AppDisK/op30
if [ `cat /tmp/.AppDisK/op30 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op30;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############lgnite Application######################
if [ `ps aux |grep ignite |sed '/grep/d' |wc -w` -gt 0 ]
then
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a31
###########user############################
mkdir /tmp/.AppDisK/ignite
ps aux |grep ignite |sed '/grep/d' > /tmp/.AppDisK/ignite/mqps
cat /tmp/.AppDisK/ignite/mqps|grep ignite > /dev/null && echo `cat /tmp/.AppDisK/ignite/mqps |grep ignite | awk {'print $1'} |sort -u`, >> /tmp/.AppDisK/b31 || echo "," >> /tmp/.AppDisK/b31
###########language############################
if [ `cat /tmp/.AppDisK/ignite/mqps |wc -w` -gt 0 ]
then
echo Ignite,, > /tmp/.AppDisK/c31
else 
echo ",," >> /tmp/.AppDisK/c31
fi
###########middleware############################
if [ `cat /tmp/.AppDisK/ignite/mqps |wc -w` -gt 0 ]
then 
echo "Ignite,IGNITE", > /tmp/.AppDisK/d31
else 
echo "," >> /tmp/.AppDisK/d31
fi
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f31
echo `cat /tmp/.AppDisK/a31 |sed 's/ /|/g'``cat /tmp/.AppDisK/b31``cat /tmp/.AppDisK/d31``cat /tmp/.AppDisK/c31``cat /tmp/.AppDisK/f31` |sed 's/",,/",TIBCO Version Not Found,/g' >> /tmp/.AppDisK/op31
if [ `cat /tmp/.AppDisK/op31 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op31;else echo "" > /dev/null;fi
#############EOD##############################
else 
echo "" > /dev/null
fi

############Sap Netweaver JAVA Application######################
if [ `cat /etc/passwd |grep -o 'daaadm' |wc -w` -gt 0 ]
then
##########IP Address##########################
mkdir /tmp/.AppDisK/netweaver
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a33
###########user############################
runuser -l daaadm -c 'sapcontrol -nr 00 -function GetSystemInstanceList > /tmp/sapmqps'
sleep 02
if [ `cat /tmp/sapmqps |wc -w` -gt 0 ]
then
echo daaadm, > /tmp/.AppDisK/b33
else 
echo "," >> /tmp/.AppDisK/b33
fi
###########language############################
if [ `cat /tmp/sapmqps |wc -w` -gt 0 ]
then
echo SAP,, > /tmp/.AppDisK/c33
else 
echo ",," >> /tmp/.AppDisK/c33
fi
###########middleware############################
if [ `cat /tmp/sapmqps |wc -w` -gt 0 ]
then 
cat /tmp/sapmqps |grep -o 'J2EE' > /dev/null && echo Sap Netweaver JAVA,SAP JAVA NETWEAVER, >> /tmp/.AppDisK/d33 || echo "," >> /dev/null
else 
echo "," >> /tmp/.AppDisK/d33
fi
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f33
echo `cat /tmp/.AppDisK/a33 |sed 's/ /|/g'``cat /tmp/.AppDisK/b33``cat /tmp/.AppDisK/d33``cat /tmp/.AppDisK/c33``cat /tmp/.AppDisK/f33` |sed 's/",,/",SAP Version Not Found,/g' >> /tmp/.AppDisK/op33
if [ `cat /tmp/.AppDisK/op33 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op33;else echo "" > /dev/null;fi
rm -rf /tmp/sapmqps
#############EOD##############################
else 
echo "" > /dev/null
fi

############Sap Netweaver ABAP Application######################
if [ `cat /etc/passwd |grep -o 'daaadm' |wc -w` -gt 0 ]
then
##########IP Address##########################
mkdir /tmp/.AppDisK/netweaverA
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a34
###########user############################
runuser -l daaadm -c 'sapcontrol -nr 00 -function GetSystemInstanceList > /tmp/sapAmqps'
sleep 02
if [ `cat /tmp/sapAmqps |wc -w` -gt 0 ]
then
echo daaadm, > /tmp/.AppDisK/b34
else 
echo "," >> /tmp/.AppDisK/b34
fi
###########language############################
if [ `cat /tmp/sapAmqps |wc -w` -gt 0 ]
then
echo SAP,, > /tmp/.AppDisK/c34
else 
echo ",," >> /tmp/.AppDisK/c34
fi
###########middleware############################
if [ `cat /tmp/sapAmqps |wc -w` -gt 0 ]
then 
cat /tmp/sapAmqps |grep -o 'ABAP' > /dev/null && echo Sap Netweaver ABAP,SAP ABAP NETWEAVER, >> /tmp/.AppDisK/d34 || echo "," >> /dev/null
else 
echo "," >> /tmp/.AppDisK/d34
fi
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f34
echo `cat /tmp/.AppDisK/a34 |sed 's/ /|/g'``cat /tmp/.AppDisK/b34``cat /tmp/.AppDisK/d34``cat /tmp/.AppDisK/c34``cat /tmp/.AppDisK/f34` |sed 's/",,/",SAP Version Not Found,/g' >> /tmp/.AppDisK/op34
if [ `cat /tmp/.AppDisK/op34 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op34;else echo "" > /dev/null;fi
rm -rf /tmp/sapAmqps
#############EOD##############################
else 
echo "" > /dev/null
fi

############Sap HANA Application######################
if [ `cat /etc/passwd |grep -o 'daaadm' |wc -w` -gt 0 ]
then
##########IP Address##########################
mkdir /tmp/.AppDisK/netweaverH
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/a35
###########user############################
runuser -l daaadm -c 'sapcontrol -nr 00 -function GetSystemInstanceList > /tmp/sapHmqps'
sleep 02
if [ `cat /tmp/sapHmqps |wc -w` -gt 0 ]
then
echo daaadm, > /tmp/.AppDisK/b35
else 
echo "," >> /tmp/.AppDisK/b35
fi
###########language############################
if [ `cat /tmp/sapHmqps |wc -w` -gt 0 ]
then
echo SAP,, > /tmp/.AppDisK/c35
else 
echo ",," >> /tmp/.AppDisK/c35
fi
###########middleware############################
if [ `cat /tmp/sapHmqps |wc -w` -gt 0 ]
then 
cat /tmp/sapHmqps |grep -o 'HDB' > /dev/null && echo Sap HANA,SAP HANA, >> /tmp/.AppDisK/d35 || echo "," >> /dev/null
else 
echo "," >> /tmp/.AppDisK/d35
fi
##########Application Detection###############

##########Operating System####################
echo `cat /etc/redhat-release` OS~#~ >> /tmp/.AppDisK/f35
echo `cat /tmp/.AppDisK/a35 |sed 's/ /|/g'``cat /tmp/.AppDisK/b35``cat /tmp/.AppDisK/d35``cat /tmp/.AppDisK/c35``cat /tmp/.AppDisK/f35` |sed 's/",,/",SAP Version Not Found,/g' >> /tmp/.AppDisK/op35
if [ `cat /tmp/.AppDisK/op35 |grep -o ',' |wc -w` -eq 6 ];then sed '/,,,,,,/d' /tmp/.AppDisK/op35;else echo "" > /dev/null;fi
rm -rf /tmp/sapHmqps
#############EOD##############################
else 
echo "" > /dev/null
fi

############Java Application######################
FILE="/tmp/.AppDisK/Java/jtest"
if [ -f "$FILE" ];
then
mkdir /tmp/.AppDisK/Java
#cat /tmp/.AppDisK/d14 |grep Apache >> /tmp/.AppDisK/Java/jtest
#cat /tmp/.AppDisK/d4 |grep WebLogic >> /tmp/.AppDisK/Java/jtest
#cat /tmp/.AppDisK/d5 |grep WildFly |sed '/command/'d >> /tmp/.AppDisK/Java/jtest
if [ `cat /tmp/.AppDisK/Java/jtest |wc -w` -gt 0 ]
then echo "," >> /tmp/.AppDisK/jd2
else echo "Java Non-Middleware," >> /tmp/.AppDisK/jd2
##########IP Address##########################
echo "A#S#D#"`ip r |sed -n 's/.* src \([^ ]*\).*/\1/p'`, >> /tmp/.AppDisK/ja2
###########user############################
ps aux |grep java |awk {'print$1 ,$11'}|sed '/grep/d' |sort -u |sed '/oem/d' |sed '/SMD/d' |sed '/CAAPM/d' > /tmp/.AppDisK/Java/java
if `cat /tmp/.AppDisK/Java/java > /dev/null`;then echo `cat /tmp/.AppDisK/Java/java |awk {'print$1'}`, >> /tmp/.AppDisK/jb2;else echo "," >> /tmp/.AppDisK/jb2;fi
###########language############################
java -version >& /tmp/.AppDisK/Java/jversion
cat /tmp/.AppDisK/Java/jversion |awk NR==1 |sed '/command/'d >> /tmp/.AppDisK/jc2
if `cat /tmp/.AppDisK/jc2 > /dev/null`;then echo "";else echo "," >> /tmp/.AppDisK/jc2;fi
fi
#############EOD##############################
else 
echo "" > /dev/null
fi
###########Files & Folder Removal #############
sleep 03
cd /tmp
rm -rf .AppDisK
