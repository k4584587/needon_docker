#!/bin/bash
#docker run --rm -v ${PWD}/war:/usr/local/tomcat8/webapps -v /var/run/docker.sock:/var/run/docker.sock -p 2222:2222 -p 7070:8080 --name needon_panel k45845871/needon_panel:0.1
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -p 7070:8080 --name needon_panel k45845871/needon_panel:0.1