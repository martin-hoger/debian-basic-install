#!/usr/bin/env bash

TARGET_DIR=~/bin/debian-basic-install
GIT_SOURCE="https://github.com/martin-hoger/debian-basic-install"

# ------------------------

echo "Install git"
which git || sudo apt-get install -y git

echo
echo "Clone the source from github"
if [ ! -d "$TARGET_DIR" ]; then
    git clone "$GIT_SOURCE" "$TARGET_DIR"
else
    git pull origin master
fi

echo
echo "Install scripts"
cd $TARGET_DIR
# http://unix.stackexchange.com/questions/50634/requesting-user-input-while-reading-file-line-by-line
# http://compgroups.net/comp.unix.shell/fixing-stdin-inside-a-redirected-loop/400460
exec 3< <(ls -1 scripts/*.sh 2> /dev/null)
while read -u 3 LINE
do
    echo "=============================================================================="
    echo $(pwd)/$LINE
    sh -c ./$LINE
    echo
done 

# Close fd # 3
exec 3>&-

