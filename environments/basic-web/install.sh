echo "Installing dependencies"

sudo apt-get update
sudo add-apt-repository ppa:git-core/ppa -y
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

# update ruby to the current stable release using the rvm package manager
# the current stable release is not on the archives
echo "Updating Ruby ..."

# https://rvm.io/rvm/install
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

# install RVM stable with ruby
\curl -sSL https://get.rvm.io | bash -s stable --ruby

# for the sass
sudo gem install compass

# for jekyll
sudo gem install bundler

#install MongoDB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org


echo "Installation succesful!"
echo "You should do \"source ~/.profile\" before you continue."
echo "Happy developing!"
