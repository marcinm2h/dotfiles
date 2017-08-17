# nvm && set latest node as default
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
nvm install node
nvm alias default node

# VSCode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update -qq &&
sudo apt-get install code

# Spotify
sudo apt-add-repository -y "deb http://repository.spotify.com stable non-free" &&
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys D2C19886 &&
sudo apt-get update -qq &&
sudo apt-get install spotify-client

# Tilix
sudo add-apt-repository ppa:webupd8team/terminix
sudo apt-get update -qq &&
sudo apt-get install tilix

# Fira Code font
mkdir -p ~/.local/share/fonts
cd
echo 'for type in Bold Light Medium Regular Retina; do
    wget -O ~/.local/share/fonts/FiraCode-${type}.ttf \
    "https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-${type}.ttf?raw=true";
done' >> download.sh
bash download.sh
fc-cache -f

# Yarn
sudo apt-get update && sudo apt-get install yarn

# commonly used npm deps
sudo npm install -g create-react-app grunt webpack 

# matrix effect :)
sudo apt-get install cmatrix