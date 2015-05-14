#!/usr/bin/env bash

#Following dependencies need to be installed before running it.
# python-dev, BeautifulSoup4, Selenium, Chromedriver, Google chrome, firefox, Nodejs, Uncss, Cleancss, Imagemin

$BUILD_PATH=$0
$CACHE_PATH=$1


#get the latest google chrome build available
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i --force-depends google-chrome-stable_current_amd64.deb

#download and install the latest chromedriver
LATEST=$(wget -q -O - http://chromedriver.storage.googleapis.com/LATEST_RELEASE)
wget http://chromedriver.storage.googleapis.com/$LATEST/chromedriver_linux64.zip

#Symlink chromedriver into /usr/local/bin/ so it’s in your PATH and available system-wide:
unzip chromedriver_linux64.zip && sudo ln -s $PWD/chromedriver /usr/local/bin/chromedriver

#install pip and python 
apt-get install python-pip
pip install virtualenv

#another way to do it
#sudo npm -g install chromedriver
#ln -sf /usr/lib/node_modules/chromedriver/lib/chromedriver/chromedriver ~/bin/chromedriver

#install selenium
pip install selenium

#install nodejs
apt-get update
apt-get install nodejs
apt-get install npm

npm install grunt-uncss --save-dev
npm install -g imagemin
npm install -g spawn-sync
npm install -g cleancss

pip install beautifulSoup4
pip install igraph


