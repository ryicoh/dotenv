PYTHON_VERSION="anaconda3-5.1.0"
RUBY_VERSION="2.5.1"

if [ ! -e "$HOME/.pyenv" ]; then
    curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
    echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bash_profile
    echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
    echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bash_profile
    source ~/.bash_profile
    pyenv install $PYTHON_VERSION
    pyenv global $PYTHON_VERSION
    pyenv rehash
fi

if [ ! -e "$HOME/.rbenv" ]; then
    git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
    git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
    echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
    source ~/.bash_profile
    rbenv install $RUBY_VERSION
    rbenv global $RUBY_VERSION
    rbenv rehash
fi

if [ ! -e "$HOME/.config/nvim" ]; then
    cp -r .config "$HOME/.config"
fi
    


if [ ! -e "$HOME/.zshrc" ]; then
    curl -L git.io/antigen > $HOME/.antigen.zsh
    cp -p .zshrc "$HOME/.zshrc" 
    source .zshrc
fi


