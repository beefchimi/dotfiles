###
### Shopify Spin bootstrap script

# Manually clone private dotfiles repo
git clone -b shopify --single-branch git@github.com:beefchimi/dotfiles.git

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install ZSH plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# ZSH
ln -sfn ~/dotfiles/.zsh-config ~/.zsh-config
ln -sf ~/dotfiles/.zshrc ~/.zshrc

# Git
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global

# GPG
ln -sfn ~/dotfiles/.gnupg ~/.gnupg
gpg --import ~/.gnupg/pubring.kbx

source ~/.zshrc
