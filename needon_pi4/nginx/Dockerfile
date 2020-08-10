 FROM nginx:latest

ENV TZ='Asia/Seoul' \
    LANGUAGE=ko_KR.UTF-8 \
    LANG=ko_KR.UTF-8 \
    LC_ALL=ko_KR.UTF-8 \
    LC_CTYPE=ko_KR.UTF-8 \
    LC_MESSAGES=ko_KR.UTF-8

RUN sed -i 's/archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y \ 
    locales-all \
    tzdata \ 
    locales \
    && rm -rf /var/lib/apt/lists/*

RUN localedef -i ko_KR -f UTF-8 ko_KR.UTF-8

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    && echo $(date +%r)