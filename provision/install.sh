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

#Route::get('/{all?}', 'NavigationController@showPage'); only after all routes