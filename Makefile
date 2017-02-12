# Make file for the extension
# Please type `make help` for usage information.

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

help:
	@echo "make             reinstall extension from working directory"
	@echo "make clean       uninstall all installed ooolilypond extensions"
	@echo "make oxt         build oxt file"
	@echo "make install     install oxt file in LibreOffice"
	@echo "make oxtde       translate and build German oxt file"
	@echo "make installde   install German oxt file in LibreOffice"

