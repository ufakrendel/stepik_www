mkdir -p /home/box/web/public/img
mkdir -p /home/box/web/public/css
mkdir -p /home/box/web/public/js
mkdir -p /home/box/web/uploads
mkdir -p /home/box/web/etc
cp ./nginx.conf /home/box/web/etc/nginx.conf
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/nginx.conf
sudo rm /etc/nginx/sites-enabled/default

cp ./wsgi/hello.py /home/box/web/hello.py
rm /etc/gunicorn.d/*
cp ./wsgi/wsgi.config /home/box/web/etc/hello.py
gunicorn -c /home/box/web/etc/hello.py /home/box/web/hello:application --daemon

sudo ln -s /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py

sudo nginx



