#!/usr/bin/env bash

# 未定義な変数があったら途中で終了する
set -u

# dotfilesディレクトリに移動する
cd $HOME/dotfiles

for f in .*; do
    [ "$f" = "." ] && continue
    [ "$f" = ".." ] && continue
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitignore" ] && continue

    echo $f

    # シンボリックリンクを貼る
    ln -snfv ${PWD}/$f $HOME
done