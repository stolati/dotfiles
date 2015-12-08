#!/usr/bin/env zsh



echo "including command not found handler"

command_not_found_handler(){ set -eux
	apt i "$1" && "$@" || echo "zsh : command not found $1"
}














