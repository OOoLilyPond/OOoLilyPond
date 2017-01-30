all:	clean zip install

clean:
	unopkg remove ooolilypond.oxt || exit 0
	rm -f ooolilypond.oxt

zip:
	zip -r ooolilypond.oxt \
		Addons.xcu description.xml META-INF \
		Office OOoLilyPond pkg-desc templates

install:
	unopkg add ooolilypond.oxt

