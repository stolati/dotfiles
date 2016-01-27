#!/usr/bin/zsh

export ENV_OS=unknown


case "$(uname -o)" in
	Cygwin)
		export ENV_OS=CYGWIN
	;;
esac




