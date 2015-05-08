all: gen mk

gen:
	@python Makefile.py

mk:
	cd src && make

