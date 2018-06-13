# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python{3_4,3_5} )

#Does the inherit from pywal need to go here? 

DESCRIPTION="Graphical application for generating different color variations of Numix or Materia themes (GTK2, GTK3), Gnome-Colors, Archdroid icons, and terminal"
HOMEPAGE="https://github.com/themix-project/oomox"
SRC_URI=""
EGIT_REPO_URI="https://github.com/themix-project/oomox"
EGIT_BRANCH="master"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="" #Pywal depends on dev-python/setuptools[${PYTHON_USEDEP}] -- does oomox? 
RDEPEND=""
