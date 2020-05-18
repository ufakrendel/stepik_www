  
mkdir -p /home/box/web/public/img
mkdir -p /home/box/web/public/css
mkdir -p /home/box/web/public/js
mkdir -p /home/box/web/uploads
mkdir -p /home/box/web/etc
cp ./nginx.conf /home/box/web/etc/nginx.conf
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/nginx.conf
sudo rm /etc/nginx/sites-enabled/default
cp /home/box/stepik_www/wsgi/hello.py /home/box/web/

cd /home/box/web/
django-admin startproject ask
cd ask
./manage.py startapp qa

 
