TERMUX_PKG_VERSION=3.00
TERMUX_PKG_HOMEPAGE=http://www.sentex.net/~mwandel/jhead/
TERMUX_PKG_DESCRIPTION="Exif Jpeg header manipulation tool"
TERMUX_PKG_SRCURL=http://www.sentex.net/~mwandel/jhead/jhead-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_BUILD_IN_SRC=yes

termux_step_make_install () {
	cp jhead $TERMUX_PREFIX/bin/jhead
	cp -f jhead.1 $TERMUX_PREFIX/share/man/man1/jhead.1
}
