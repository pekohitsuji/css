GIT_CHECK  = git config remote.origin.url
GIT_REMOTE = git remote add origin https://github.com/pekohitsuji/css.git

all:

git:
	if [ ! -d .git ] ; then git init ; fi
	git config --local user.name  pekohitsuji
	git config --local user.email kaeru921@icloud.com
	if [ -z "$$($(GIT_CHECK))" ] ; then $(GIT_REMOTE) ; fi
	@echo "Do folloings:"
	@echo "    git add ."
	@echo "    git commit -m \"first commit\""
	@echo "    git branch -M main"
	@echo "    git push -u origin main"
