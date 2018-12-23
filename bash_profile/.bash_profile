#!/bin/bash

HISTCONTROL=ignoredups

HSTSIZE=1000

function checkError()
{
	LASTERROR=$?
	if [ $LASTERROR != 0 ]
	then 
		echo "$LASTERROR "
	fi
}

alias c='clear'

PS1='`checkError`\[\033[0;34m\]\u\[\033[0m\]~\[\033[0;31m\]\W\[\033[0m\] $'
