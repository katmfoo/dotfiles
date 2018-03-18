# dotfiles
## macOS setup
1. Clone this repo to any location
2. Run macOS.sh
3. Manually do the following (optional)
    * Set mouse/trackpad tracking speed
    * Put installed apps onto second page of Launchpad
    * Removed unused apps from dock and add installed apps
    * Remove unnecessary items from Finder sidebar (in Preferences of Finder)
    * Install ClearPass OnGuard

## Bash setup
1. Clone this repo to any location
2. Run bash.sh from root directory of dotfiles repo (script will remove local repo when complete)

## Web dev environment setup
Note, most of the necessary information on what needs to be done can be found from the end of the output of the brew install command for each of the following.

#### Apache
Document root is at `/usr/local/var/www`. Apache configuration file httpd.conf is located at `/usr/local/etc/httpd/httpd.conf`.
1. Install Apache with `brew install apache2`
2. Set the default port (Listen) to 80 in httpd.conf like the following (this will make it so starting Apache requires sudo but that is okay)
````
Listen 80
````
3. Run `sudo apachectl start` to start Apache

#### PHP
PHP configuration file (php.ini) is located at `/usr/local/etc/php/7.2/php.ini`.
1. Install PHP with `brew install php`
2. Set the date.timezone under the [Date] tag to "UTC" like the following to set PHP's timezone to UTC
```
date.timezone = "UTC"
```
3. Add the following to httpd/httpd.conf to enable PHP in Apache (requires Apache restart)
```
LoadModule php7_module /usr/local/opt/php/lib/httpd/modules/libphp7.so
<FilesMatch .php$>
    SetHandler application/x-httpd-php
</FilesMatch>
```
4. Ensure that DirectoryIndex in httpd.conf includes index.php like the following
```
DirectoryIndex index.php index.html
```
4. Run `php-fpm` to start PHP

### MySQL
The default host is `localhost`, user is `root`, password is nothing, and port is 3306. MySQL configuration file (my.cnf) is located at `/usr/local/etc/my.cnf`. Run `mysql.server` to see usage of mysql server command. Run `sudo mysql` to run MySQL statements.
1. Install MySQL with `brew install mysql`
2. Add the following line to my.cnf to set MySQL's timezone to UTC
```
default_time_zone='+00:00'
```
3. Run `mysql.server start` to start MySQL server

## fitDegree dev environment setup
#### fd-api
1. Clone fd-api repo into Apache document root
2. Run `composer install` inside fd-api root directory
3. Ensure fd_config.ini is set to development mode and that development database is set correctly
