PREFIX ?= /usr/local

install:
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f clipmanager ${DESTDIR}${PREFIX}/bin
	cp -f clipmenu ${DESTDIR}${PREFIX}/bin
	cp -f clipctl ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/clipmanager
	chmod 755 ${DESTDIR}${PREFIX}/bin/clipmenu
	chmod 755 ${DESTDIR}${PREFIX}/bin/clipctl

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/clipmanager
	rm -f ${DESTDIR}${PREFIX}/bin/clipmenu
	rm -f ${DESTDIR}${PREFIX}/bin/clipctl
