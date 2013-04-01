# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

GTK_MAJ_VER="2"

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="GUI functions as used in the book \"The Haskell School of Expression\"."
HOMEPAGE="http://projects.haskell.org/gtk2hs/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="${GTK_MAJ_VER}/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/cairo-0.12*:${GTK_MAJ_VER}=[profile?]
		=dev-haskell/gtk-0.12*:${GTK_MAJ_VER}=[profile?]
		>=dev-haskell/stm-2.0:=[profile?]
		<dev-haskell/stm-3.0:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		x11-libs/gtk+:2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"
