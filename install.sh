PYTHON_VERSION="anaconda3-5.1.0"

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

if [ ! -e "$HOME/.cache/dein" ]; then
    for file in $vim_files; do
        cp -r .config "$HOME/.config"
    done
fi
    

