#!/bin/bash

home_dir=$1
mkdir -p $home_dir/opt
cd $home_dir/opt
git clone https://github.com/overtone/emacs-live.git
mkdir $home_dir/.emacs.d
cp -rf $home_dir/opt/emacs-live/* $home_dir/.emacs.d/
