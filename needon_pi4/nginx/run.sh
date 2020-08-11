#!/bin/bash
docker run --name needon_pi_nginx --rm -v "${PWD}/config:/needon/config" --net=host k45845871/needon_pi:nginx