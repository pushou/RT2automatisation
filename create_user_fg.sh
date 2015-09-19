#!/bin/bash
apt-get -y install git-core  sudo
mkdir /home/git
groupadd git
adduser user1 # creation de l'utilisateur user1
usermod -g git user1 # rattachemement de user1 au groupe git
adduser user2 # creation de l'utilisateur user2
usermod -g git user2 # rattachemement de user2 au groupe git
adduser user2
su - user2 -c "git config --global user.email 'user1' & git config --global user.name  'user1'"
