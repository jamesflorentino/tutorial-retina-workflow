all:
	git checkout master -- build
	cp -r build/* .
	git rm -rf build
	git add .
	git commit -am "update"
	git checkout master
	git push
