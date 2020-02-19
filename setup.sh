#First things first. Good'ole update.
sudo apt update
sudo apt upgrade
sudo apt dist-upgrade
sudo apt autoremove

#Assume no git
sudo apt install git

#Zsh
sudo apt install zsh

#Install OhMyZsh
sudo sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Tmux
sudo apt install tmux

#Htop
sudo apt install htop

#Copy main config files
sudo cp configs/.gitconfig ~/.gitconfig
sudo cp configs/.bashrc ~/.bashrc
sudo cp configs/.vimrc ~/.vimrc
sudo cp configs/.zshrc ~/.zshrc
sudo cp configs/.tmux.conf ~/.tmux.confi

#Set zsh as the default shell
sudo chsh -s $(which zsh)
