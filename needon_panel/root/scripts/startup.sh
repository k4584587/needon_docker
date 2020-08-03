#!/bin/bash

echo "[!] ssh 서비스를 시작합니다."
service ssh start
echo ""

echo "[!] docker 서비스를 시작합니다."
service docker start
echo ""

echo "[!] tomcat 서버를 시작합니다."
sh /usr/local/tomcat8/bin/startup.sh
echo ""
tail -f /usr/local/tomcat8/logs/catalina.out