MAJOR=1
MINOR=0
REVISION=0


clean:
	rm -rf bin

release:
	mkdir bin
	tar -zcf bin/hello_user_${MAJOR}.${MINOR}.${REVISION}.tar.gz src/hello_user.sh LICENSE README.md screenshot.png

upload:
	git push github
	git push father

install:
	echo "TODO"
