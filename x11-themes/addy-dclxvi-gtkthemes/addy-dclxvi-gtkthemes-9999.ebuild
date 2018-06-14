# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
EGIT_REPO_URI="https://github.com/addy-dclxvi/gtk-theme-collections.git"
inherit git-r3

DESCRIPTION="Themes for GTK+ by addy-dclxvi"
HOMEPAGE="https://github.com/addy-dclxvi"

LICENSE="GPLv3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+gtk2 +gtk3"

DEPEND="( >=x11-libs/gtk+-2.24.30:2
          >=x11-libs/gtk+-3.20.0:3
          >=x11-libs/gdk-pixbuf-2.32.2:2
          >=dev-libs/glib-2.48.0:2
          >=x11-themes/gtk-engines-murrine-0.98.1 )"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${MY_PN}-${PV}"

src_install() {
	insinto /usr/share/themes/addy-dclxvi
	doins -r *
	dodoc README.md
}
