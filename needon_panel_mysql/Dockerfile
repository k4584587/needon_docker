 FROM mariadb:latest

RUN sed -i 's/archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y \ 
    language-pack-ko \
    tzdata \ 
    locales \
    nano \
    && rm -rf /var/lib/apt/lists/*

RUN localedef -i ko_KR -f UTF-8 ko_KR.UTF-8

ENV TZ='Asia/Seoul' \
    LANGUAGE=ko_KR.UTF-8 \
    LANG=ko_KR.UTF-8 \
    LC_ALL=ko_KR.UTF-8 \
    LC_CTYPE=ko_KR.UTF-8 \
    LC_MESSAGES=ko_KR.UTF-8

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    && echo $(date +%r)

COPY root* /


RUN chmod 755 -R /etc/mysql/conf.d