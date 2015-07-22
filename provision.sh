# Add Google public key to apt
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

# Update app-get
sudo apt-get update

# Install chrome
sudo apt-get -y install google-chrome-stable

# Install Xvfb
sudo apt-get -y install xvfb libgl1-mesa-dri x11-xkb-utils xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic xserver-xorg-core x-ttcidfont-conf

# Start Xvfb
export DISPLAY=:10
Xvfb :10 -screen 0 1366x768x24 -ac &

# Install essentials
sudo apt-get install -y python-software-properties git tmux vim build-essential libssl-dev curl htop

# Install Java (protractor dependency)
# wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_java.sh && bash equip_java.sh

# Required dependency of phantomjs
sudo apt-get -y install libfontconfig

wget -qO- https://raw.github.com/creationix/nvm/master/install.sh | sh
source /home/vagrant/.nvm/nvm.sh
# Installing Node.JS
echo "Installing Node.JS..."

nvm install stable
nvm use stable
nvm alias default stable
#install global dependencies
npm install -g yo bower gulp generator-fatarrow
