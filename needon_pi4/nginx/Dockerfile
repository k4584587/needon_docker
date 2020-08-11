 FROM k45845871/needon_pi:nginx

RUN rm -rf /docker-entrypoint.d \
    && mkdir /docker-entrypoint.d

 RUN apt-get update \
     && apt-get install -y rsync \
     && rm -rf /var/lib/apt/lists/*

COPY root* /