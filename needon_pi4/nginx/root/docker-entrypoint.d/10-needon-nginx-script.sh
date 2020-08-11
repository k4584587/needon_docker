#!/bin/bash
file='/needon/config/nginx.conf'

if [ ! -f $file ]; then

    echo "[!] 설정파일을 갱신합니다."
    mkdir /needon/config/conf.d
    
    rsync --update -raz /etc/nginx/nginx.conf /needon/config
    rsync --update -raz /etc/nginx/conf.d/* /needon/config/conf.d
    
    ln -sfn /needon/config/nginx.conf /etc/nginx/nginx.conf
   

    rm -rf /etc/nginx/conf.d/
    ln -sfn /needon/config/conf.d/ /etc/nginx/

else

ln -sfn /needon/config/nginx.conf /etc/nginx/nginx.conf
rm -rf /etc/nginx/conf.d/
ln -sfn /needon/config/conf.d/ /etc/nginx/

fi


