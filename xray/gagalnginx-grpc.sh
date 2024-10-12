#!/bin/bash
# Mod By Cyberpunk🥷☁️☁️☁️☁️☁️☁️☁️☁️☁️🧑‍💻🐼🗽🌊🎰☁️
# =====================================================
source /var/lib/crot/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/xray/domain)
else
domain=$IP
fi
MYIP=$(wget -qO- ipinfo.io/ip);
clear
domain=$(cat /etc/xray/domain)

#Update Sertificate SSL
echo Starting Update SSL Sertificate
sleep 3
sudo pkill -f nginx & wait $!
systemctl daemon-reload
systemctl stop nginx
systemctl daemon-reload
systemctl stop nginx
systemctl stop xray
systemctl stop xray.service
systemctl stop xray@grpc
systemctl stop xray@grpc.service
rm /etc/nginx/conf.d/abc.conf
touch /etc/nginx/conf.d/abc.conf
cat <<EOF >>/etc/nginx/conf.d/abc.conf
server {
        listen 88;
	listen 7788 ssl http2;
	server_name $domain;              # 主机头，请更改为你绑定的域名
	index index.html;                         # 默认页面
	root /usr/share/nginx/html;               # 网页根目录路径
 
	ssl_certificate /etc/xray/xray.crt;           # 证书路径
	ssl_certificate_key /etc/xray/xray.key;    # 密钥路径
	ssl_protocols TLSv1.2 TLSv1.3;
	ssl_ciphers ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:DHE-RSA-AES128-GCM-SHA256:DHE-RSA-AES256-GCM-SHA384;
 
	# 在 location 后填写 /{你的 ServiceName}
	location /$domain {
		if ($content_type !~ "application/grpc") {
			return 404;
		}
		client_max_body_size 0;
		client_body_timeout 1071906480m;
		grpc_read_timeout 1071906480m;
		grpc_pass grpc://127.0.0.1:7777;
	}
}
EOF
systemctl daemon-reload
service nginx restart
systemctl daemon-reload
service nginx restart
systemctl stop xray.service
systemctl start xray.service
systemctl enable xray.service
systemctl restart xray.service
systemctl stop xray@grpc.service
systemctl enable xray@grpc.service
systemctl restart xray@grpc.service
