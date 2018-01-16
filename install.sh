#!/bin/sh

for i in bash_profile bashrc tmux.conf; do
	if [ -f $HOME/.$i ]; then
		echo $i exists.
		mv -v $HOME/.$i $HOME/.$i.bak
	fi
	ln -s $HOME/.dotfiles/$i $HOME/.$i
done
