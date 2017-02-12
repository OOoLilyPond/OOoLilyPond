# To build the extension, please run `make`
# make clean: Uninstalls the current extension
# make zip: Rebuilds the extension
# make install: Install the extension

VERSION := $(shell git describe --abbrev=0 --tags)

all:	clean zip install

clean:
	unopkg remove ooolilypond*.oxt || exit 0
	rm -f ooolilypond*.oxt
	rm -rf translation/extension-*

oxt:
	cd extension && zip -r ../ooolilypond-$(VERSION).oxt *

oxtde:
	translation/translate.py de
	cd translation/extension-de && zip -r ../../ooolilypond-$(VERSION)-de.oxt *

install:
	unopkg add ooolilypond-$(VERSION).oxt

installde:
	unopkg add ooolilypond-$(VERSION)-de.oxt

