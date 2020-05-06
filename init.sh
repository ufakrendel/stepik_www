cd /home
mkdir -p /home/box/web/public/img
mkdir -p /home/box/web/public/css
mkdir -p /home/box/web/public/js
mkdir -p /home/box/web/uploads
mkdir -p /home/box/web/etc

find /home/box/ -type d -exec chmod 755 {}
find /home/box/ -type f -exec chmod 644 {}

cp ./mNgingx.conf /home/box/web/etc/nginx.conf

sudo ﻿ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/nginx.conf
sudo /etc/init.d/nginx restart

