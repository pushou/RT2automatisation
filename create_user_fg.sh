#!/bin/bash
apt-get -y install git-core man vim sudo
mkdir /home/git
groupadd git
adduser user1 # creation de l'utilisateur user1
usermod -g git user1 # rattachemement de user1 au groupe git
adduser user2 # creation de l'utilisateur user2
usermod -g git user2 # rattachemement de user2 au groupe git
su - user1 -c "git config --global user.email 'user1' ; git config --global user.name  'user1';git config --global push.default simple"
su - user2 -c "git config --global user.email 'user2' ; git config --global user.name  'user2';git config --global push.default simple"
