#! /bin/bash

apt-get update -q
apt-get install nginx -q
apt-get install npm -q
apt-get install nodejs-legacy -q

cd /var/www

git config --global user.email "fredrik.x.svensson@skatteverket.se"
git config --global user.name "fredrik-x"
git clone --depth=16 https://fredrik-x:skv123!@github.com/fredrik-x/demo.git

cp nginx.default /etc/nginx/sites-enabled/default

service nginx restart

pm2 start app/app.js
