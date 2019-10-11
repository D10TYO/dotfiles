# dotfiles

## Setup git

```shell
git config -l
git config --global user.name "D10TYO"
git config --global user.email "git@d10.tokyo"
```

## Make .ssh dir

```shell
mkdir ~/.ssh
touch ~/.ssh/config
chmod 700 ~/.ssh
chmod 600 ~/.ssh/*
```

## SSH keygen

```shell
ssh-keygen -t ed25519 -N "" -f ~/.ssh/github -C git@d10.tokyo
```

Paste `github.pub` to "New SSH key" of https://github.com/settings/keys

## .ssh/config

```shell
vim ~/.ssh/config

Host github.com
  HostName github.com
  IdentityFile ~/.ssh/github
  User git
  LogLevel QUIET
```

## Confirm

```shell
ssh -T github.com
git clone git@github.com:D10TYO/dotfiles.git
```
