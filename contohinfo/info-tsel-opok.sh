#!/bin/bash
domain=$(cat /etc/xray/domain)
clear

echo -e "Info Opok Tsel:"
echo -e "Methode SSL/TLS Websocket Bug Cloudflare"
echo -e "Payload SSL:"
echo -e "GET wss://141.193.213.11/ HTTP/1.1[crlf]Host: $domain[crlf]Upgrade: websocket[crlf][crlf]"
echo -e "SNI/Server Spoof:"
echo -e "engineerin.giphy.com"
echo -e "Server Remote:"
echo -e "engineerin.giphy.com:443"
echo -e ""


