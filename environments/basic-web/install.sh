echo "Installing dependencies"

sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y build-essential libssl-dev

# Install Node and Npm
echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash

# load nvm
export NVM_DIR="/home/vagrant/.nvm" 
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

echo "Installing node 4.4.2"
nvm install 4.4.2

# Install web dev packages
echo "Installing Bower ..."
npm install -g bower
echo "Installing Grunt ..."
npm install -g grunt-cli
echo "Installing Gulp ..."
npm install -g gulp

echo "Installed node: " $(node -v)
echo "Installed npm: " $(npm -v)

# update ruby
echo "Updating Ruby ..."
sudo apt-get install -y ruby1.9.1-dev

echo "Installation succesful!"
echo "You should do \"source ~/.profile\" before you continue."
echo "Happy developing!"
