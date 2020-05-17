mkdir -p /home/box/web/public/img
mkdir -p /home/box/web/public/css
mkdir -p /home/box/web/public/js
mkdir -p /home/box/web/uploads
mkdir -p /home/box/web/etc
cp ./nginx.conf /home/box/web/etc/nginx.conf
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/nginx.conf
sudo rm /etc/nginx/sites-enabled/default


cd /home/box/web/

sudo apt-get update
sudo apt install python3.5
PYTHON_PATH=$(which python3.5)
virtualenv -p "$PYTHON_PATH" web_study 2>/dev/null
source web_study/bin/activate

pip install gunicorn django==2.1

gunicorn -b :8080 hello:application --daemon
sudo nginx

cd /home/box/web/
django-admin startproject ask
cd ask
./manage.py startapp qa

gunicorn --bind 0.0.0.0:8000 ask.wsgi --daemon




