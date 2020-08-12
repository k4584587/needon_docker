#!/bin/bash

fileName='/needon/nginx.conf'
if [ ! -f $fileName ]; then

    echo "[!] 설정파일을 복사합니다."
    mkdir -p /needon/conf.d
    rsync --update -raz /etc/nginx/nginx.conf /needon
    rsync --update -raz /etc/nginx/conf.d /needon

    #nginx.conf 심볼링크 걸기
    ln -fs /needon/nginx.conf /etc/nginx/nginx.conf

    rm -rf /etc/nginx/conf.d
    ln -fs /needon/conf.d/ /etc/nginx

else

    echo "[!] 설정된 nginx 파일을 불러옵니다."
    
    #nginx.conf 심볼링크 걸기
    ln -fs /needon/nginx.conf /etc/nginx/nginx.conf

    rm -rf /etc/nginx/conf.d
    ln -fs /needon/conf.d/ /etc/nginx

fi