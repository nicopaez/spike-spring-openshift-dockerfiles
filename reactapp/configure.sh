#!/bin/bash

echo "Armando el archivo de configuración de ngnix"

echo "
http {
    server {
        listen 80;
        server_name _;
        index index.html;
        root /data/www;
        location / {
	    	try_files \$uri /index.html;
        }
        location /config {
            proxy_pass http://127.0.0.1:8081/spikereact/development;
            proxy_set_header Host \$host;
            proxy_set_header X-Real-IP \$remote_addr;
            proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
            proxy_set_header content-type "application/json";
        }
    }
}
events {
    worker_connections  1024;
}
" > /etc/nginx/nginx.conf

echo "CONFIG generada"
