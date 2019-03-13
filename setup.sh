#!/usr/bin/env bash
# copy paste this file in bit by bit.
# don't run it.
echo "Setting up your Mac... hit ctrl-c NOW to cancel"
read -n 1

##############################################################################################################
### XCode Command Line Tools
#      thx https://github.com/alrra/dotfiles/blob/ff123ca9b9b/os/os_x/installs/install_xcode.sh

if ! xcode-select --print-path &> /dev/null; then

    # Prompt user to install the XCode Command Line Tools
    xcode-select --install &> /dev/null

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Wait until the XCode Command Line Tools are installed
    until xcode-select --print-path &> /dev/null; do
        sleep 5
    done

    print_result $? 'Install XCode Command Line Tools'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Point the `xcode-select` developer directory to
    # the appropriate directory from within `Xcode.app`
    # https://github.com/alrra/dotfiles/issues/13

    sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
    print_result $? 'Make "xcode-select" developer directory point to Xcode'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Prompt user to agree to the terms of the Xcode license
    # https://github.com/alrra/dotfiles/issues/10

    sudo xcodebuild -license
    print_result $? 'Agree with the XCode Command Line Tools licence'

fi
###
##############################################################################################################



##############################################################################################################
### homebrew!

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# install all the things
./brew.sh
./brew-cask.sh

### end of homebrew
##############################################################################################################

### OH MY ZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

npm install -g pure-prompt

# Type `git open` to open the GitHub page or website for a repository.
npm install -g git-open

# sexy git diffs
npm install -g diff-so-fancy

rm -rf $HOME/.zshrc
rm -rf $HOME/.zsh
cp .zshrc $HOME
cp .gitconfig $HOME
cp .gitignore $HOME
cp .hyper.js $HOME
cp -r .zsh $HOME

# Modify Mac configuration
./osx.sh

# Make ZSH the default shell environment
chsh -s $(which zsh)

