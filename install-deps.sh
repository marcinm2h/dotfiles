sudo apt-get install git curl

# nvm && set latest node as default
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
nvm install node

# TODO: Tilix

# Fira Code font
mkdir -p ~/.local/share/fonts
bash -c 'for type in Bold Light Medium Regular Retina; do
    wget -O ~/.local/share/fonts/FiraCode-${type}.ttf \
    "https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-${type}.ttf?raw=true";
done'
fc-cache -f

# Node stuff
npm install -g create-react-app opn-cli

# matrix effect :)
sudo apt-get install cmatrix
