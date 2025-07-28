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

# install zinit
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
