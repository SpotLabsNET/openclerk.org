# openclerk.org

Public website of [openclerk.org](http://openclerk.org).

# Installation

This project is a fork of [quickstart](https://github.com/soundasleep/quickstart). To install:

1. Run `npm install` and `composer update`
2. If using Apache, edit `site/.htaccess` to set your REWRITEBASE
3. Run `grunt` to compile the assets. (You can also use `grunt serve` to watch for changes.)

# Deploying

## Apache 2.4

```conf
<VirtualHost *:80>
  ServerName openclerk.org
  ServerAlias www.openclerk.org
  DocumentRoot /var/www/openclerk.org/site/
  <Directory /var/www/openclerk.org/site/>
    AllowOverride all
  </Directory>
</VirtualHost>
```
