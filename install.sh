#bin/sh

ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.vimrc ~/.config/nvim/init.vim
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf

#zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
# nvim
curl -L -o ~/bin/nvim https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
sudo apt install python python3 python3-pip
pip3 install --user pynvim
# rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
~/.rbenv/bin/rbenv init
rbenv install 3.0.0
rbenv global 3.0.0
rbenv rehash
# rails
gem install rails
sudo apt-get install libsqlite3-dev

curl -LO https://download.jetbrains.com/idea/ideaIU-2020.3.1.tar.gz
sudo tar xzf ideaIU-2020.3.1.tar.gz -C /usr/local/share
sudo ln -s /usr/local/share/idea-IU-203.6682.168/bin/idea.sh /usr/local/bin/idea

curl -LO https://download.jetbrains.com/ruby/RubyMine-2020.3.1.tar.gz
sudo tar xzf RubyMine-2020.3.1.tar.gz -C /usr/local/share
sudo ln -s /usr/local/share/RubyMine-2020.3.1/bin/rubymine.sh /usr/local/bin/rubymine

curl -LO https://download.jetbrains.com/cpp/CLion-2020.3.1.tar.gz
sudo tar xzf CLion-2020.3.1.tar.gz -C /usr/local/share
sudo ln -s /usr/local/share/clion-2020.3.1/bin/clion.sh /usr/local/bin/clion

sudo apt install libpangocairo-1.0-0 libgbm-dev libpango-1.0-0 libxss1