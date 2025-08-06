# in ~/
# install identities (if identity exists then add to apple keychain)
if [ -f ~/.ssh/starlosgalaxy ]; then
    ssh-add --apple-use-keychain ~/.ssh/starlosgalaxy
fi

if [ -f ~/.ssh/carlos.salazar@fastgrid ]; then
    ssh-add --apple-use-keychain ~/.ssh/carlos.salazar@fastgrid
fi

if [ -f ~/.ssh/carlos.salazar@slalom ]; then
    ssh-add --apple-use-keychain ~/.ssh/carlos.salazar@slalom
fi

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install GNU Stow
brew install stow

# install fzf
brew install fzf

# install zinit
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

# install fonts
mkdir -p ~/Library/Fonts/Operator-Mono && find ./fonts/Operator-Mono -maxdepth 1 -name "*.otf" -print0 | xargs -0 -I {} cp {} ~/Library/Fonts/Operator-Mono/

mkdir -p ~/Library/Fonts/Operator-Mono-Nerd-Font && find ./fonts/Operator-Mono-Nerd-Font -maxdepth 1 -name "*.otf" -print0 | xargs -0 -I {} cp {} ~/Library/Fonts/Operator-Mono-Nerd-Font/

# some useful mac tools
brew install --cask notunes # stops apple music from launching when play is pressed
