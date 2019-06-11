#!/bin/bash
bundle exec jekyll clean
bundle exec jekyll build -I 

sudo cp -R _site/* /var/www/websites/panxw.com
sudo rm /var/www/websites/panxw.com/deploy.sh
sudo rm /var/www/websites/panxw.com/Gemfile
sudo rm /var/www/websites/panxw.com/Gemfile.lock
sudo rm /var/www/websites/panxw.com/README.md
sudo rm /var/www/websites/panxw.com/index_*/ -rf

exit

