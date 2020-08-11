#!/bin/sh

set -e

ME=$(basename $0)

dir='/needon/config/nginx'

echo "[!] nginx 시작 하는중입니다."
echo ""

if [ ! -d $dir ]; then

    echo "[!] 설정파일을 갱신합니다."

    mkdir /needon/config/nginx
    mkdir /needon/config/nginx/conf.d
    
    rsync --update -raz /etc/nginx/nginx.conf /needon/config/nginx
    rsync --update -raz /etc/nginx/conf.d/* /needon/config/nginx/conf.d
    
    ln -sfn /needon/config/nginx/nginx.conf /etc/nginx/nginx.conf
   

    rm -rf /etc/nginx/conf.d/
    ln -sfn /needon/config/nginx/conf.d/ /etc/nginx/

else

ln -sfn /needon/config/nginx/nginx.conf /etc/nginx/nginx.conf

rm -rf /etc/nginx/conf.d/
ln -sfn /needon/config/nginx/conf.d/ /etc/nginx/

fi