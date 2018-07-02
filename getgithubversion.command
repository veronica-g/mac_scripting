#!/usr/bin/env bash

if [ -e if [ -e /Library/Developer ]
	then
		gitversion=$(/usr/bin/git --version | awk '{print $3}')

		printf "GitHub version $gitversion found.\n"
	else
		printf "Xcode tools (git dependency) not installed.\n"
fi
