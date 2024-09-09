.ONESHELL:

build:
	npm run theme

tag:
	git tag -a $(t) -m ""
	git push -v origin refs/tags/$(t)

remove-tag:
	git tag -d $(t)
	git push -v origin :refs/tags/$(t)

retag: remove-tag tag