## Get running in few steps 🚀

### Steps

- update the apt repo

  ```bash
  sudo apt-get update && apt upgrade
  ```

- download git
  ```bash
  sudo apt-get install git
  ```
- clone repo

  ```bash
  git clone git@github.com:arjansunar/.dotfiles.git
    # or
  git clone https://github.com/arjansunar/.dotfiles
  ```

- cd to the project

  ```bash
  cd .dotfiles
  ```

- run install.sh
  ```bash
  ./install.sh
  ```

### Steps after install.sh

1. Install [alacrity](https://github.com/alacritty/alacritty/blob/master/INSTALL.md) and run

   ```bash
   stow alacrity # from .dotfiles directory
   ```

2. Install [neovim v8.0](https://github.com/neovim/neovim/releases/tag/v0.8.0) and [astrovim](https://astronvim.github.io/)

## Fedora

```
sudo dnf update 
sudo dnf group install development tools 
```





