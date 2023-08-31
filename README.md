# Skript Syntax Highlighting for Neovim

Add syntax highlighting for Skript scripting language in Neovim.

## Description

This Neovim configuration provides syntax highlighting for the Skript scripting language, enhancing your coding experience when working with Skript files. It highlights keywords, data types, operators, and other elements to make your Skript code more readable and easier to navigate.

## Preview

![image](https://github.com/marcelpkg/vim-skript-syntax/assets/64794665/ba17ce82-502a-47bb-8076-ea092034a9c5)


## Installation (Linux)

1. Download the **minecraft_sk.vim** file from the _releases_ tab on Github
2. Create a directory named **syntax** in your neovim config folder
### Command
```bash
mkdir ~/.config/nvim/syntax/
```
3. Copy the **minecraft_sk.vim** file to the directory.
### Command _Assuming you downloaded minecraft_sk.vim to the ~/Downloads/ directory._
```bash
mv ~/Downloads/minecraft_sk.vim ~/.config/nvim/syntax/
```
4. Add this to the end of your _~/.config/nvim/init.lua_ (Assuming you use nvim)
```lua
vim.cmd[[ au BufNewFile,BufRead *.sk set filetype=minecraft_sk ]]
```
5. Re-open vim

### And there you have syntax highlighting for Skript in Neovim!

## Usage

Open any .sk file in Neovim, and you should see improved syntax highlighting for Skript code. The keywords, data types, operators, and other elements will be highlighted according to your color scheme.
Credits

This syntax highlighting configuration is inspired by the Skript language and is designed to work with Neovim and Vim.
