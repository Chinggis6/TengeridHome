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

> After this command the input username and password will be saved (inside root folder) without further prompting

	git config credential.helper store
