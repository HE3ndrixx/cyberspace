#!/bin/bash
clear
echo -e "Examples of TRUE AND FALSE Websocket Payloads"
echo -e "TRUE EXAMPLE"
echo -e "GET wss://bugcdncom/ HTTP/1.1[crlf]"
echo -e "WRONG EXAMPLE"
echo -e "GET wss://bugcdncom/HTTP/1.1[crlf]"
echo -e "TRUE EXAMPLE"
echo -e "GET wss://bugcdncom/ HTTP/1.1[crlf]Host: domainsshcom[crlf]"
echo -e "WRONG EXAMPLE"
echo -e "GET wss://bugcdncom/HTTP/1.1[crlf]Host:domainsshcom[crlf]"
echo -e "TRUE EXAMPLE"
echo -e "GET wss://bugcdncom/ HTTP/1.1[crlf]Host: domainsshcom[crlf]Upgrade: websocket[crlf][crlf]"
echo -e "WRONG EXAMPLE"
echo -e "GET wss://bugcdncom/HTTP/1.1[crlf]Host:domainsshcom[crlf]Upgrade: websocket[crlf][crlf]"
echo -e ""

