 My Dotfiles

This directory contains the dotfiles for my system

## Requirements
Ensure you have the following 

### Git

```
sudo pacman -S git
```

### Stow

```
sudo pacman -S stow
```

## Instalation

First, check out the dotfiles repo in your $HOME directory using Git

```
$ git clone git@github.com:Louis-Chevalier/dotfiles.github
$ cd dotfiles
```
then use GNU stow to create symlinks

```
$ stow .
```

video tutorial: https://www.youtube.com/watch?v=y6XCebnB9gs
