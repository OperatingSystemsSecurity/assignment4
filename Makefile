all: set_permissions

set_permissions: showdate
	sudo chown root:root ./$<
	sudo chmod u+s ./$<
