ifeq ($(PREFIX),)
    PREFIX := /usr/local
endif

build: zalgo.hs
	ghc -dynamic zalgo.hs

install:
	install -Dvm 755 ./zalgo $(DESTDIR)$(PREFIX)/bin/zalgo
