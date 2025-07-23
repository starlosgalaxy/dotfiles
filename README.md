# Dotfiles

This repository contains my personal dotfiles managed with GNU Stow.

## What is GNU Stow?

GNU Stow is a symlink farm manager that helps you maintain dotfiles by creating symbolic links from this repository to your home directory. This keeps all your dotfiles organized in one place while allowing them to work from their expected locations.

## Prerequisites

- GNU Stow (`brew install stow` on macOS or `apt-get install stow` on Ubuntu/Debian)

## Structure

```
dotfiles/
├── .zshrc
├── .gitconfig
├── .stow-local-ignore
└── ... (other configuration files)
```


## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/.dotfiles
   cd ~/.dotfiles
   ```

2. Stow all configurations:
   ```bash
   stow .    # This will stow everything from the current directory
   ```

## Removing Symlinks

To remove all symlinks:
```bash
stow -D .    # Remove all symlinks
```

## Best Practices

1. Use `.stow-local-ignore` to exclude README and other non-dotfiles
2. Test new configurations in a clean environment before committing
3. Keep sensitive information in separate, non-tracked files
4. Document any special setup requirements for specific configurations

## License

MIT
