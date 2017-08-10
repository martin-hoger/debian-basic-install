#!/usr/bin/env bash
echo "Install basic stuff"
echo

sudo apt-get update
sudo apt-get install -y \
    git \
    curl \
    wget \
    sshfs \
    mc \
    moreutils \
    tree \
    telnet \
    tcpdump \
    htop \
    ncdu \
    netcat-openbsd \
    zip \
    strace \
    screen \
    bsd-mailx \
    mailutils \
    ack-grep

