#!/bin/bash

# Get dependencies
sudo apt-get install -y postgresql-client libpq-dev nodejs apache2

# Set up Ruby
sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
cd /tmp
curl -O https://raw.githubusercontent.com/wayneeseguin/rvm/master/binscripts/rvm-installer
curl -O https://raw.githubusercontent.com/wayneeseguin/rvm/master/binscripts/rvm-installer.asc
gpg --verify rvm-installer.asc
bash rvm-installer stable
source /etc/profile.d/rvm.sh && rvm install 2.1.5
cd /veche

# Set up gems
source /etc/profile.d/rvm.sh && gem install bundler && bundle install

# Set up locales
sudo localedef -c -f UTF-8 -i /veche/locales/nv_NV nv_NV
sudo localedef -c -f UTF-8 -i /veche/locales/al_CY al_CY
sudo localedef -c -f UTF-8 -i /veche/locales/och_NV och_NV

# Set up Apache
sudo rm /etc/apache2/sites-available/000-default.conf
sudo rm /etc/apache2/sites-enabled/000-default.conf
cat >~/000-veche.conf <<'EOF'
PassengerRuby /usr/local/rvm/gems/ruby-2.1.5@vechenet/wrappers/ruby
PassengerAppEnv development

<VirtualHost *:80>
  ServerName dev.veche.net
  DocumentRoot /veche/public
  <Directory /veche/public>
    Allow from all
    Options -MultiViews
    Require all granted
  </Directory>
</VirtualHost>
EOF
sudo mv ~/000-veche.conf /etc/apache2/sites-available/
sudo ln -s /etc/apache2/sites-available/000-veche.conf /etc/apache2/sites-enabled/000-veche.conf

# Set up Passenger
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 561F9B9CAC40B2F7
sudo apt-get install apt-transport-https ca-certificates
sudo cat >/etc/apt/sources.list.d/passenger.list <<EOF
deb https://oss-binaries.phusionpassenger.com/apt/passenger trusty main
EOF
sudo chown root: /etc/apt/sources.list.d/passenger.list
sudo chmod 600 /etc/apt/sources.list.d/passenger.list
sudo apt-get update
sudo apt-get install -y libapache2-mod-passenger
sudo a2enmod passenger

# Start server
sudo service apache2 restart
