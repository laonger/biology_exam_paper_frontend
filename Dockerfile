from nginx:alpine

volume ["/var/log"]
run mkdir -p /root/www
add *.html /root/www/
add *.js /root/www/
add *.map /root/www/
run chmod -R 755 /root/www
add nginx.conf /etc/nginx/nginx.conf

expose 80
expose 81

workdir /root/www/

cmd ["nginx", "-g", "daemon off;"]
