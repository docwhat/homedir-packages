#
# $Id$
#


[ "$TERM" != "dumb" ] && stty erase 
TERM='xterm-color'

# Directories & Paths
setAppHome 	fink 		/sw
#setAppHome 	macports 	/opt/macports
setAppHome 	mysql 		/usr/local/mysql
setAppHome 	homebrew 	/opt/homebrew
setAppHome 	pear 		/usr/local/pear
setAppHome 	go 		$HOME/Projects/go

export NODE_PATH="/opt/homebrew/lib/node_modules"

addToPath `brew --prefix python`/bin
source `brew --prefix grc`/etc/grc.bashrc

PS1COLOR='\[\033[0;34m\]' #blue

