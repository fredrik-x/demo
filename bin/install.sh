#! /bin/bash

cd /var

git config --global user.email "fredrik.x.svensson@skatteverket.se"
git config --global user.name "fredrik-x"

apt-get update -qq
apt-get install nginx -qq
apt-get install npm -qq
apt-get install nodejs-legacy -qq

cd /var/www

npm install pm2@latest -g
pm2 start app/app.js

cp bin/nginx.default /etc/nginx/sites-enabled/default
service nginx restart

