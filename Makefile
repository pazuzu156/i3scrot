install:
	install -D -m755 i3scrot.sh ${PREFIX}/bin/i3scrot

uninstall:
	rm -rf ${PREFIX}/bin/i3scrot
