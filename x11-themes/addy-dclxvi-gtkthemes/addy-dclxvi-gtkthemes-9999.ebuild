# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=6
MY_PN="addy-dclxvi-gtkthemes"
inherit git-r3
SRC_URI=""
EGIT_REPO_URI="https://github.com/addy-dclxvi/gtk-theme-collections.git"
KEYWORDS=""
DESCRIPTION="Themes for GTK+ by addy-dclxvi"
HOMEPAGE="https://github.com/addy-dclxvi"

LICENSE="GPLv3"
SLOT="0"

DEPEND="( >=x11-libs/gtk+-2.24.30:2
          >=x11-libs/gtk+-3.20.0:3
          >=x11-libs/gdk-pixbuf-2.32.2:2
          >=dev-libs/glib-2.48.0:2
          >=x11-themes/gtk-engines-murrine-0.98.1 )"
RDEPEND="${DEPEND}"



src_install() {
	ls "$WORKDIR"
	insinto /usr/share/themes
	doins -r *
	dodoc README.md
}
