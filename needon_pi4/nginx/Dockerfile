 FROM nginx

ENV TZ='Asia/Seoul' \
    LANGUAGE=ko_KR.UTF-8 \
    LANG=ko_KR.UTF-8 \
    LC_ALL=ko_KR.UTF-8 \
    LC_CTYPE=ko_KR.UTF-8 \
    LC_MESSAGES=ko_KR.UTF-8

RUN apt-get update \
    && apt-get install -y \ 
    locales-all \
    tzdata \ 
    locales \
    rsync \
    net-tools

RUN localedef -i ko_KR -f UTF-8 ko_KR.UTF-8 \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    && echo $(date +%r)

RUN ln -snf /usr/share/zonein

COPY root* /

RUN chmod +x /needon-nginx-script.sh \
    && chmod +x /docker-entrypoint.sh