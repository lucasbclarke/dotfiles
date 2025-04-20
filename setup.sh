sudo apt install zsh
sudo apt install tmux
sudo apt install curl
sudo apt install git
sudo apt install ghostty
curl -fsS https://dl.brave.com/install.sh | sh
git clone https://github.com/lucasbclarke/code
git clone https://github.com/lucasbclarke/dotfiles
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm -rf .zshrc
mv dotfiles/.zshrc ..
mv dotfiles/.tmux.conf ..
mv dotfiles/i3/config ~/.config/i3/config
mv dotfiles/ghostty/config ~/.config/ghostty/config
