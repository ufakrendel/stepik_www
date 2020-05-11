mkdir -p /home/box/web/public/img
mkdir -p /home/box/web/public/css
mkdir -p /home/box/web/public/js
mkdir -p /home/box/web/uploads
mkdir -p /home/box/web/etc
cp ./mNginx.conf /home/box/web/etc/nginx.conf
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/nginx.conf
sudo rm /etc/nginx/sites-etabled/default
sudo nginx



