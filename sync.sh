#!/bin/bash
function copy_files() {
	rsync \
		--exclude "install-deps.sh"\
		--exclude ".git/" \
		--exclude ".gitignore" \
		--exclude "instal-deps.sh" \
		--exclude "sync.sh" \
		--exclude "todo.md" \
		--exclude "LICENSE" \
		--exclude "readme.md" \
		-av . ~
}

git pull

copy_files

unset copy_files
