## Introduction

This is a compilation of my dot files.

### Setup

Install oh-my-zsh: https://ohmyz.sh/

Clone this project, then run the following Symlink Commands:
```
export DOTFILE_HOME=~/Developer/setup/dotfiles/

# ZSH
ln -nfs $DOTFILE_HOME/.zshrc ~/.zshrc
ln -nfs $DOTFILE_HOME/sh/.zshrc_local_linux ~/.zshrc_local_linux
ln -nfs $DOTFILE_HOME/sh/mewi-custom.zsh-theme ~/.oh-my-zsh/custom/themes/mewi-custom.zsh-theme

# Vim
ln -nfs $DOTFILE_HOME/vim/.ideavimrc ~/.ideavimrc
ln -nfs $DOTFILE_HOME/vim/.vimrc ~/.vimrc

# TMUX
ln -nfs $DOTFILE_HOME/tmux/.tmux.conf ~/.tmux.conf

# Revup (after adding github token)
cp $DOTFILE_HOME/revup/.revupconfig ~/.revupconfig 
```

## Key Mapping

### Keyboard

Compiling custom key mappings to use across OS and tools.

```
# Remap Modifiers to match the Apple Keyboard
Linux:    [Super/Pop][Alt][Ctrl]
Windows:  [Windows][Alt][Ctrl]
Mac:      [Ctrl][Alt][Cmd]

# CapsLock is an additional Escape (Fun Fact: `Ctrl+[` is Esc)
CapsLock : Esc

```

### Linux Key Mappings

Instead, use [Gnome-Tweaks](https://itsfoss.com/gnome-tweak-tool)

Used to struggle with **Xmodmap**:
```
xmodmap ~/.xmodmap # Apply custom key mappings

xev # Find out keycode of mouse clicks or keyboard keys

```

### MacOs Key Mappings

- Use Karabiner-Elements: Map CapsLock to dual mode : Esc and Ctrl 
Ref: https://gist.github.com/tanyuan/55bca522bf50363ae4573d4bdcf06e2e


### Vim Key Mappings

**Customisation**
```
# To keep usage consistent on different OS, rely on custom shortcuts instead of Ctrl/Cmd
Ctrl+Keys : <leader>+customKeys

# Custom Shortucts that are more meaningful to me than the defaults
Modifer + _
  H : Home
  J : PgDn
  K : PgUp
  L : End

  h : LeftArrow
  j : DownArrow
  k : UpArrow
  l : RightArrow

  <leader>d : Open directory view
  <leader>f : Search
  <leader>w : Window Managment
  <leader>j : Jumps
```

**Setup:**
- Update Vim (Linux: `sudo apt install vim`)
- Install [Plug](https://github.com/junegunn/vim-plug) and run:
```
:PlugInstall
:PlugClean
```

**Vim key-binding Plugins:**
- Vimium for Chrome
- IdeaVim for Jetbrains
- vim-mode for Atom

**Install**
- [Install RIPGREP](https://github.com/BurntSushi/ripgrep)
- [Install ctags](https://github.com/universal-ctags/ctags)

## Terminal

**Software:**
- Mac: ITerm
- Ubuntu: Guake
- PopOS: GNOME Terminal

**Styling:**
- Font / Jetbrains Mono
- Text & Background Color Scheme / Solaris Dark
- Palette / Solarised

## Shell

**Dot Files:**
- zsh/.zshrc
- zsh/.oh-my-zsh

**Setup**

- [Shell](https://www.cyberciti.biz/tips/how-do-i-find-out-what-shell-im-using.html)
- [Install ZSH](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- [Install OMZ](https://github.com/ohmyzsh/ohmyzsh)
