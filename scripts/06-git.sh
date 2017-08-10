#!/usr/bin/env bash

git config credential.helper store
git config --global user.email "root@$(hostname)"
git config --global user.name $(hostname)
