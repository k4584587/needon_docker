 FROM k45845871/needon_php:7.4

RUN apt-get update \
    && apt-get install -y git \
    && rm -rf /var/lib/apt/lists/*

RUN rm -rf /var/www/html/index.php

COPY root* /

VOLUME [ "/var/www/html" ]

RUN apt-get -yf autoremove \
    && apt-get clean 