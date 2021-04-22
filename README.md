# github_light.nvim

A copy of GitHub's light theme for NeoVim.

## Requirements

You need to be running Neovim 0.5.0+

## Installation

Install via package manager:
```vim
" If you are using Vim-Plug
Plug 'tjdevries/colorbuddy.nvim'
Plug 'taphill/github_light.nvim'
```

```lua
-- If you are using Packer
use 'tjdevries/colorbuddy.nvim'
use 'taphill/github_light.nvim'
```

Enable the colorscheme:

```vim 
" Vim-Script:
colorscheme github_light
```

```lua
-- Lua:
require('colorbuddy').colorscheme('github_light')
```

## Features

The color palette was derived from referencing GitHub's VS Code themes [here](https://github.com/primer/github-vscode-theme) and GitHub's Primer Primitives [here](https://primer.style/primitives/).

If you would like to fork this project to replicate GitHub's dark, or dark dimmed themes, you will find both of those resources useful.

At this time, I do not plan on adding plugin-specific highlighting, but that could change.

## TODO

I have only added extended filetype highlighting options for Ruby, Lua, HTML, CSS, and JavaScript. Any other languages may not accurately reflect the syntax highlighting on GitHub. If you would like to add new highlighting options please open a PR, start a discussion, or fork this project.