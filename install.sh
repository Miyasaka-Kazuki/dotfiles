#!/usr/bin/env bash

# 未定義な変数があったら途中で終了する
set -u

# dotfilesディレクトリに移動する
cd $HOME
mkdir dotfiles 
cd dotfiles

for f in .*; do
    [ "$f" = "." ] && continue
    [ "$f" = ".." ] && continue
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitignore" ] && continue

    echo $f
    
    # 元のdotfileを~/dotfiles_backupに移動
    mv $HOME/$f $HOME/dotfiles_backup
done