 FROM k45845871/needon_ubuntu:tomcat8

 RUN apt-get update \
     && apt install -y apt-transport-https ca-certificates curl software-properties-common \
     && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
     && add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" \
     && apt update \
     && apt install -y docker-ce


RUN apt-get -yf autoremove \
    && apt-get clean \
    && chmod 555 -R /etc/mysql/conf.d

 COPY root* /