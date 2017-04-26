# Git

Git and GitHub

> https://pages.github.com/

1. Clone

	git clone https://github.com/USER/USER.github.io

2. Add

	git add --all

3. Commit

	git commit -m "Initial commit"

4. Push

	git push -u origin master

## Pushing

	git remote add origin https://github.com/USER/REPO

> -u is --set-upstream

	git push -u origin master
(prompt)

> After this command the input username and password will be saved (inside root folder) without further prompting

	git config credential.helper store

## Pulling

	git init
	git pull https://github.com/USER/REPO

(before pushing)

	git config --global user.email "user@email.com'
	git config --global user.name "username"

## .gitignore
*
*/
!.gitignore (exception)

## DOS 2 UNIX

	git config --global core.autocrlf false

### Check file

	git config --global --edit

Settings are saved in ~/.gitconfig as [core] autocrlf=false
