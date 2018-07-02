#!/usr/bin/env bash

if [ -e /Library/Developer ]
	then
		gitversion=$(/usr/bin/git --version | awk '{print $3}')

		printf "\ngit detector:\n\ngit version $gitversion found.\n\n"
	else
		printf "Xcode tools (git dependency) not installed.\n"
fi
