VERSION := $(shell git describe --abbrev=0)

all:	clean zip install

clean:
	unopkg remove ooolilypond-$(VERSION).oxt || exit 0
	rm -f ooolilypond*.oxt

zip:
	zip -r ooolilypond-$(VERSION).oxt \
		Addons.xcu description.xml META-INF \
		Office OOoLilyPond pkg-desc templates
#	cp ooolilypond.oxt ooolilypond-$(VERSION).oxt

install:
	unopkg add ooolilypond-$(VERSION).oxt

