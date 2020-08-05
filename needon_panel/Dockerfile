 FROM k45845871/needon_ubuntu:needon_panel

 COPY root* /

 RUN apt-get update

RUN apt-get -yf autoremove \
    && apt-get clean 