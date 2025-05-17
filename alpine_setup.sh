#!/bin/sh
# Alpine Linux setup script

# Update package repositories
apk update

# Upgrade installed packages
apk upgrade

# Add edge/main repository
echo https://dl-cdn.alpinelinux.org/alpine/v3.20/main >> /etc/apk/repositories

# Add edge/community repository
echo https://dl-cdn.alpinelinux.org/alpine/v3.20/community >> /etc/apk/repositories

# Update repositories after adding new sources
apk update

# Upgrade packages with new repositories
apk upgrade

# Install git, openssh and neovim
apk add git openssh neovim 
apk add build-base cmake automake autoconf libtool pkgconf coreutils curl unzip gettext-tiny-dev tree-sitter tree-sitter-lua wget gzip bash gcc libc-dev nodejs npm
