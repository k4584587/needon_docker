#!/bin/bash
dir='/var/www/html/bbs/'
if [ ! -d $dir ]; then
  #그누보드 최신버전 다운로드
  echo "[!] 그누보드 최신버전 다운로드를 시작합니다."
  echo ""
  git clone https://github.com/gnuboard/gnuboard5.git /var/www/html
  mkdir /var/www/html/data

  echo "[!] 퍼미션 설정중입니다."
  chown -R www-data:www-data /var/www/html/data; \
	chmod -R 777 /var/www/html/data
fi

echo ""

echo "[!] apache 서비스를 시작합니다."
apache2-foreground

echo ""