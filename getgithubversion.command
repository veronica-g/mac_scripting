#!/usr/bin/env bash

if [ -e /Library/Developer ]
	then
		gitversion=$(/usr/bin/git --version | awk '{print $3}')

		printf "git version $gitversion found.\n"
	else
		printf "Xcode tools (git dependency) not installed.\n"
fi
