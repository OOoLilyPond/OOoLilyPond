# To build the extension, please run `make`
# make clean: Uninstalls the current extension
# make zip: Rebuilds the extension
# make install: Install the extension

VERSION := $(shell git describe --abbrev=0 --tags)

all:	clean zip install

clean:
	unopkg remove ooolilypond-$(VERSION).oxt || exit 0
	rm -f ooolilypond*.oxt

zip:
	cd extension && zip -r ../ooolilypond-$(VERSION).oxt *

install:
	unopkg add ooolilypond-$(VERSION).oxt

