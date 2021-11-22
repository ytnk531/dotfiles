#bin/sh
set -euxo pipefail

sudo apt install -y zsh \
                    neovim \
                    tmux

# zsh
sh -c "$(curl -fsSL https://git.io/zinit-install)"
ln -sf ~/dotfiles/.zshrc ~/.zshrc

# vim
ln -sf ~/dotfiles/.vimrc ~/.config/nvim/init.vim

# tmux
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf

# ruby
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
~/.rbenv/bin/rbenv init

# rails
gem install rails
sudo apt-get install libsqlite3-dev

