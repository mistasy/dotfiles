export DOTFILES=$HOME/.dotfiles

# For common configs
if [ -f $DOTFILES/.bashrc ]; then
    source $DOTFILES/.bashrc
fi

# For individual configs
if [ -f "$HOME/.bash_local" ]; then
    source $HOME/.bash_local
fi

if [ -d "$ANDROID_HOME" ]; then
    export PATH=$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH
fi

export BREW_RUBY=/usr/local/opt/ruby/bin

if [ -d "$BREW_RUBY" ]; then
    export PATH=$BREW_RUBY:$PATH
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced


