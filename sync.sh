#!/bin/bash
git pull
function copy_files() {
	rsync \
		--exclude ".git/" \
		--exclude "instal-deps.sh" \
		--exclude "sync.sh" \
		--exclude "TODO" \
		--exclude "LICENSE" \
		--exclude "readme.md" \
		-av . ~
}

# --force to install witouth prompt
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	copy_files
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		copy_files
	fi
fi

unset copy_files
source ~/.bash_profile
