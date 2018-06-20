# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{4,5,6} )

inherit python-any-r1 git-r3

DESCRIPTION="Jinja2 + YAML based config templater"
HOMEPAGE="https://github.com/metakirby5/zenbu"
EGIT_REPO_URI="https://github.com/metakirby5/zenbu"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="dev-python/argcomplete
	dev-python/colorlog
	dev-python/jinja
	dev-python/pyyaml
	dev-python/termcolor
	dev-python/watchdog
"
RDEPEND="${DEPEND}"

src_install() {
	python_newscript ${PN}.py ${PN}
}
