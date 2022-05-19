## Introduction

This is a compilation of my dot files.

### Setup

Install oh-my-zsh: https://ohmyz.sh/

Clone this project, then run the following Symlink Commands:
```
# ZSH
ln -nfs ~/Developer/dotfiles/zsh/.zshrc ~/.zshrc
ln -nfs ~/Developer/dotfiles/zsh/.zshrc_local_linux ~/.zshrc_local_linux
ln -nfs ~/Developer/dotfiles/zsh/mewi-custom.zsh-theme ~/.oh-my-zsh/custom/themes/mewi-custom.zsh-theme

# Vim
ln -nfs ~/Developer/dotfiles/vim/.ideavimrc ~/.ideavimrc
ln -nfs ~/Developer/dotfiles/vim/.vimrc ~/.vimrc
ln -nfs ~/Developer/dotfiles/vim/.vimrc.bundles ~/.vimrc.bundles
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

Use **HammerSpoon** to map keys and perform window management


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
- Install [Vundle](https://github.com/VundleVim/Vundle.vim) and run `:PluginInstall`

**Vim key-binding Plugins:**
- Vimium for Chrome
- IdeaVim for Jetbrains
- vim-mode for Atom

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
- [Shell](200~https://www.cyberciti.biz/tips/how-do-i-find-out-what-shell-im-using.html)
- [Install ZSH](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- [Install OMZ](https://github.com/ohmyzsh/ohmyzsh)
