#!/bin/bash

vscode=true

for arg in "$@"
do       
case $arg in
	-n|--nocode)
	vscode=false
esac
done

git clone https://github.com/pelinski/personal-latex-template.git
cp -a personal-latex-template/. .
rm -rf personal-latex-template
rm -rf .git
rm -rf zotero
rm .gitignore
rm readme.md

if $vscode
then
	rm .editorconfig
else
	rm -rf .vscode
fi

