# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{4,5,6} )

inherit git-r3 font python-any-r1

DESCRIPTION="A small bitmap font"
HOMEPAGE="https://github.com/lucy/tewi-font"
EGIT_REPO_URI="https://github.com/lucy/tewi-font.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="+pcf"

DEPEND="x11-libs/libX11
	pcf? ( x11-apps/bdftopcf )
"
RDEPEND="x11-libs/libX11"

src_compile() {
	if use pcf; then
		emake
	else
		emake var
	fi
}

src_install() {
	insinto "/usr/share/fonts/${PN}"

	if use pcf; then
		doins out/*
	else
		doins *.bdf
	fi

	font_src_install
}
