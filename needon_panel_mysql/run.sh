#!/bin/bash
docker ru --rm -v dbdata:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=khw4588  -p 3307:3306 --name needon_mysql_test k45845871/needon_mysql