 FROM k45845871/needon_ubuntu:18.04

RUN apt-get update \ 
    && apt-get -y install unzip \
    gcc \
    g++ \
    openssl \
    zlib1g-dev \
    libpcre3 \
    libpcre3-dev \
    make \
    libssl-dev \
    git

RUN mkdir -p /opt \
    && git clone https://github.com/HanbitGaram/LSH_Nginx.git /opt/LSH_nginx \
    && cd /opt/LSH_nginx \
    && git pull

RUN rm -rf /opt/LSH_nginx/openssl_111g \
    && cd opt/LSH_nginx \
    && wget https://www.openssl.org/source/openssl-1.1.1g.tar.gz -O ./openssl_111g.tar.gz \
    && tar -xvzpf openssl_111g.tar.gz \ 
    && mv openssl-1.1.1g openssl_111g

RUN cd opt/LSH_nginx \
    && git clone https://github.com/openresty/headers-more-nginx-module.git \
    && cd headers-more-nginx-module \
    && git pull \ 
    && cd \
    && cd ..


RUN cd opt/LSH_nginx \
    && ./configure \
--prefix=/usr/local/nginx \
--user=www-data \
--group=www-data \
--with-openssl=/opt/LSH_nginx/openssl_111g \
--with-http_ssl_module \
--with-http_realip_module \
--with-http_stub_status_module \
--add-module=/opt/LSH_nginx/headers-more-nginx-module \
&& make -j 4 \ 
&& make install -j 4 