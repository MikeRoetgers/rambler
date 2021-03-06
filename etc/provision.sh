#! /usr/bin/env bash

# Set local packages
sudo ln -sf /vagrant/etc/mirrorlist /etc/pacman.d/mirrorlist
sudo pacman -Syy

# Various tooling needed
sudo pacman -S --noconfirm git subversion mercurial
sudo ln -sf /vagrant/etc/bashrc /home/vagrant/.bashrc

# Go
sudo pacman -S --noconfirm go
export GOPATH=/home/vagrant
go get github.com/karalabe/xgo

# Docker
sudo pacman -S --noconfirm docker
gpasswd -a vagrant docker

# Fix the permission issue of Vagrant
chown -R vagrant:vagrant /home/vagrant
