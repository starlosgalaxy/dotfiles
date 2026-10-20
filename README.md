# Dotfiles

This repository contains my personal dotfiles managed with GNU Stow.

## What is GNU Stow?

GNU Stow is a symlink farm manager that helps you maintain dotfiles by creating symbolic links from this repository to your home directory. This keeps all your dotfiles organized in one place while allowing them to work from their expected locations.

## Prerequisites

- Homebrew on macOS
- GNU Stow
- Zsh with Zinit for plugins (Zinit bootstraps automatically from `.zshrc`)
- Shell tools such as fzf and zoxide; installation commands are in [mac.setup.sh](mac.setup.sh)

## Structure (main OS is currently Darwin/MacOS)

``` text
dotfiles/
├── .zshrc
├── .gitconfig
├── .stow-local-ignore
└── ... (other configuration files)
```

## Installation

1. Install Homebrew if it is not already installed:

   ```bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

  Follow the installer's instructions to add Homebrew to your shell environment before continuing.

2. Install GNU Stow:

  ```bash
  brew install stow
  ```

3. Clone this repository into `~/dotfiles`:

  ```bash
  git clone https://github.com/starlosgalaxy/dotfiles.git ~/dotfiles
  cd ~/dotfiles
  ```

4. Dry-run Stow to check for conflicts without changing any files:

  ```bash
  stow --simulate --verbose --target="$HOME" .
  ```

5. Back up your existing `~/.gitconfig` if present:

  ```bash
  if [ -e "$HOME/.gitconfig" ] || [ -L "$HOME/.gitconfig" ]; then
     mv "$HOME/.gitconfig" "$HOME/.gitconfig.backup.$(date +%Y%m%d-%H%M%S)"
  fi
  ```

  Back up and move aside any other conflicting files reported by Stow, such as `~/.zshrc`. Do not discard existing settings you want to keep.

6. Repeat the dry run. Once no conflicts remain, create the symlinks:

   ```bash
  stow --simulate --verbose --target="$HOME" .
  stow --verbose --target="$HOME" .
   ```

## Removing Symlinks

To remove all symlinks:

```bash
cd ~/dotfiles
stow --delete --target="$HOME" .
```

## Best Practices

1. Use `.stow-local-ignore` to exclude README and other non-dotfiles
2. Test new configurations in a clean environment before committing
3. Keep sensitive information in separate, non-tracked files
4. Document any special setup requirements for specific configurations
5. use `.local.**` for files you may want to symlink but don't want to commit up

## TODO

- [ ] Try porting over to the XDG directory structure
- [ ] Split Homebrew setup commands between systems
- [ ] Remove conflicting / duplicated auth token saving
- [ ] move .zshrc configs into a mac-profile.sh
  - [ ] leave .zshrc empty to easily see random installs on system
- [ ] Revisit setup scripts for macOS

## Done

- [x] Document Homebrew, Stow, conflict checks, and dotfiles installation
- [x] Add macOS Homebrew setup commands
- [x] Include font files in the repository
- [x] Zinit
- [x] Split Aliases out
- [x] SPlit Exports out
- [x] Migrate Away from OMZ
- [x] More command Prompt Integrations
  - [x] Fzf, Fzf-tab, zoxide
  - [x] Pick a plugin manager or home roll one
- [x] Claude Code / Copilot CLI follow the light / dark iTerm profile
- [x] gitignore'ed local file integration

## License

MIT
