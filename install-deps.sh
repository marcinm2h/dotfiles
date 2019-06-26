sudo apt install \
    curl git htop mc ncdu xsel -y

# nvm && set latest node as default
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
source ~/.bashrc
nvm install node
nvm alias node default

# Fira Code font
mkdir -p ~/.local/share/fonts
bash -c 'for type in Bold Light Medium Regular Retina; do
    wget -O ~/.local/share/fonts/FiraCode-${type}.ttf \
    "https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-${type}.ttf?raw=true";
done'
fc-cache -f
