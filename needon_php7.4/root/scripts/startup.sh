#!/bin/bash

echo "[!] ssh 서비스를 시작합니다."
service ssh start

echo ""

echo "[!] apache 서비스를 시작합니다."
apache2-foreground

echo ""