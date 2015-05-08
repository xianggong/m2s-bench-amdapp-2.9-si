all: gen mk

gen:
	@python Makefile.py

mk:
	cd src && make

clean:
	cd src && make clean