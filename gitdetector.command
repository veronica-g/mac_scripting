#!/usr/bin/env bash
#
# git detector.
# displays the installed git version on a mac
#
# Created by/last edited by: Veronica Goralski on 2 July 2018


if [ -e /Library/Developer ]
	then
		gitversion=$(/usr/bin/git --version | awk '{print $3}')

		printf "\ngit detector:\n\ngit version $gitversion found.\n\n"
	else
		printf "Xcode tools (git dependency) not installed.\n"
fi
