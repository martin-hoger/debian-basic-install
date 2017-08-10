#!/usr/bin/env bash

sudo apt-get install -y apt-transport-https dirmngr

echo 'deb https://apt.dockerproject.org/repo debian-stretch main' | sudo tee -a /etc/apt/sources.list

sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-get update

sudo apt-get install -y docker-engine
