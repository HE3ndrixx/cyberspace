#!/bin/bash
clear

echo -e "Example of SSH Payload SSL WEBSOCKET CLOUDFLARE:"
echo -e "GET wss://FILL-WITH-BUG-WEBSOCKET-CLOUDFLARE/ HTTP/1.1[crlf]Host: FILL-IN-NAMES-SUBDOMAIN-SSH-DO NOT USE IP[crlf]Upgrade: websocket[crlf][crlf]"
echo -e "SNI/Server Spoof:"
echo -e "FILL-IN-BUG-WEBSOCKET-CLOUDFLARE"
echo -e "Server Remote:"
echo -e "FILL-IN-BUG-WEBSOCKET-CLOUDFLARE:443"
echo -e ""
