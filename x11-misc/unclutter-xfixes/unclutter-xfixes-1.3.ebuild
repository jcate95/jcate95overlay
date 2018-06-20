# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="A rewrite of unclutter using the x11-xfixes extension"
HOMEPAGE="https://github.com/Airblader/unclutter-xfixes"
SRC_URI="https://github.com/Airblader/unclutter-xfixes/archive/v${PV}.tar.gz \
	-> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="x11-libs/libXi
	x11-libs/libX11
	x11-libs/libXfixes
	dev-libs/libev
"
RDEPEND="${DEPEND}"

src_prepare() {
	default

	sed -e "s/\$(shell git describe --all --long --always)/${PV}/" \
		-i Makefile || die
}
