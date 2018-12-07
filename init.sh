sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/hello.py
sudo /etc/init.d/nginx stop
sudo /etc/init.d/mysql stop
sudo /etc/init.d/gunicorn stop

sudo /etc/init.d/gunicorn -w 4 /home/box/web/hello:app
sudo /etc/init.d/mysql start
sudo /etc/init.d/nginx start

