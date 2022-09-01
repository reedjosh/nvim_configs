# nvim configs

Just getting started with full lua configs for nvim for use as a Go IDE.

## Install

Install Packer

`https://github.com/wbthomason/packer.nvim`

```git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Open ~/.config/nvim/lua/jayr/packer.lua.

`:so`

`:PackerSync`

## Mac Configuration Notes

I will soon change this repository to be a dotfile repo instead of just a nvim config repo.

### NeoVim opener application

The following
[stackoverflow](https://stackoverflow.com/questions/66298660/how-do-i-make-neovim-my-default-text-code-editor)
link explains how to create an application that opens iterm to vim for files from finder.

Can be used by `open` which is really `xdg-open` so that all applications learn what to do with that type of file.
