PREFIX?=/Library/LaunchDaemons
INSTALLDIR?=$(DESTDIR)$(PREFIX)

SRC=com.tlvince.noatime.plist

all: install

install:
	ginstall -d "$(INSTALLDIR)"
	ginstall -Dm644 --owner=root --group=wheel "$(SRC)" "$(INSTALLDIR)"

uninstall:
	rm -rf "$(SRC)"

.PHONY: all install uninstall
