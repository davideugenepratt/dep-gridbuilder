#!/usr/bin/env bash

sudo apt-get update

sudo apt-get install -y build-essential libssl-dev

su - ubuntu -c 'curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash'

su - ubuntu -c 'export NVM_DIR=/home/ubuntu/.nvm && [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && nvm install node && nvm alias default node && npm install grunt-cli @angular/cli bower -g'

su - ubuntu -c 'gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3'

su - ubuntu -c '\curl -sSL https://get.rvm.io | bash -s stable'

su - ubuntu -c 'source /home/ubuntu/.rvm/scripts/rvm && rvm install ruby && gem install sass'

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list

sudo apt-get update

sudo apt-get install -y unzip openjdk-8-jre-headless xvfb libxi6 libgconf-2-4 google-chrome-stable

echo "xvfb-run --server-args='-screen 0, 1024x768x16' google-chrome -start-maximized > /dev/null &" | sudo tee -a ~/.profile

echo "export DISPLAY=:99" | sudo tee -a ~/.profile
