sudo apt-get install curl

# nvm && set latest node as default
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
nvm install node
nvm alias default node
bash

# Tilix
sudo add-apt-repository ppa:webupd8team/terminix
sudo apt-get update -qq &&
sudo apt-get install tilix

# Fira Code font
mkdir -p ~/.local/share/fonts
bash -c 'for type in Bold Light Medium Regular Retina; do
    wget -O ~/.local/share/fonts/FiraCode-${type}.ttf \
    "https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-${type}.ttf?raw=true";
done'
fc-cache -f

# Yarn
sudo apt-get install yarn

# Npm deps
npm install -g create-react-app opn-cli

# matrix effect :)
sudo apt-get install cmatrix
