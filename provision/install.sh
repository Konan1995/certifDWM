#!/bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo apt-get install -y python-software-properties
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php7.2
cd /var/www/html
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo apt install -y zip
sudo apt-get install php7.2-mbstring
sudo apt-get install php7.2-dom
php composer.phar create-project --prefer-dist laravel/laravel projet
sudo a2enmod rewrite
sudo service apache2 restart
# go in /etc/apache2/sites-available 
# and sudo nano 000-default.conf 
# and change document root (example /var/www/html/projet/public)
# and add that under document root : 
#<Directory /var/www/html>
        #Options Indexes FollowSymLinks MultiViews
        #AllowOverride All
        #Require all granted
#</Directory>
#and restart apache 2
#change www-data to vagrant in /etc/apache2/envvars
#activate php error :
# go in  sudo nano /etc/php/"php version"/apache2/php.ini
# change Off to On
# display_errors = On 
# display_startup_errors = On 
#create a database SQL :
#sudo apt-get install -y mysql-server
#mysql -uroot -p"password"
#create database "database name";
#linked php with sql :
#sudo apt-get install php"php version"-mysql
#create a table SQL on laravel :
#go in /var/www/html/projet
#php artisan make:migration create_"table name"_table
#go in your table laravel and fill something
#on the laravel .env 
#remove that APP_NAME=Laravel
#on the database section, change name, user and password
#migrate your table laravel on your SQL with php migration
#php artisan migrate
#sudo service apache2 restart
#create one value on database :
#show databases;
#use "database name";
#insert into "database name"(title, author, genre, excerpt) values ('your title', 'your author', 'your genre', "your excerpt");
#on the server /var/www/html/projet dl adminer :
#go in https://www.adminer.org/#download and copy the link Adminer 4.6.2
#and :
#wget "link" (example : https://github.com/vrana/adminer/releases/download/v4.6.2/adminer-4.6.2.php)
#and rename this file adminer.php
#and deplace adminer.php on public
#sudo service apache2 restart
#for connexion "ip"/adminer
#Create a new controller command :
#php artisan make:controller "controller name"Controller
#create a new model :
# php artisan make:model "model name"
#chemin views : /ressource/views
#chemin controler : /app/http/controllers
#chemin models : /app/http
#Route::get('/{all?}', 'NavigationController@showPage'); only after all routes