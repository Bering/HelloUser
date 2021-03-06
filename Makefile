MAJOR=2
MINOR=0
REVISION=0


clean:
	rm -rf bin

release:
	mkdir bin
	tar -zcf bin/hello_user_${MAJOR}.${MINOR}.${REVISION}.tar.gz hello_user.sh LICENSE README.md screenshot.png

upload:
	git push github
	git push father

install:
	install hello_user.sh /usr/bin/hello_user

uninstall:
	rm /usr/bin/hello_user
