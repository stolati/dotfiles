#!/usr/bin/env zsh


if which vagrant >/dev/null 2>&1 ; then

	export VAGRANT_DETECTED_OS="$(uname -s)"

	vag-ssh(){
		set -x
		tmp_file="$(mktemp).vagrant.ssh-config"
		vagrant ssh-config "$@" > "$tmp_file"
		trap "rm -f '$tmp_file'" EXIT # just to be sure
		ssh -F "$tmp_file" default ; rm -rf "$tmp_file"
	}

	alias vag=vag-ls
	alias vag-ls="vagrant global-status"
	alias vag-rm="vagrant destroy -f"
	alias vag-new="vagrant init"
	alias vag-start="vagrant up"
	alias vag-stop="vagrant halt"
	alias vag-restart="vagrant reload"
fi





